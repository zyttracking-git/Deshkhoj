/**
 * DeshKhoj MySQL → PostgreSQL Migration Script
 * 
 * This reads u519989786_dk.sql (MySQL dump) and:
 * 1. Creates all PostgreSQL tables with exact matching columns
 * 2. Parses every INSERT statement and imports data
 * 3. Sets sequences to resume from correct AUTO_INCREMENT values
 * 
 * Run: node migrate.js
 */

const { Pool } = require('pg');
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '.env') });

const pool = new Pool({ connectionString: process.env.DATABASE_URL });
const SQL_FILE = path.join(__dirname, '..', 'u519989786_dk.sql');

// ─── Schema ─────────────────────────────────────────────────────────────────
const SCHEMA = `
-- Drop existing tables cleanly (ordered by dependency)
DROP TABLE IF EXISTS dukaan_products CASCADE;
DROP TABLE IF EXISTS dukaan_photos CASCADE;
DROP TABLE IF EXISTS dukaan_list CASCADE;
DROP TABLE IF EXISTS new_reg_prod_list CASCADE;
DROP TABLE IF EXISTS new_reg_job_cv CASCADE;
DROP TABLE IF EXISTS new_reg_form_list CASCADE;
DROP TABLE IF EXISTS user_list CASCADE;
DROP TABLE IF EXISTS measure_unit CASCADE;
DROP TABLE IF EXISTS product_category CASCADE;
DROP TABLE IF EXISTS villages CASCADE;
DROP TABLE IF EXISTS blocks CASCADE;
DROP TABLE IF EXISTS districts CASCADE;
DROP TABLE IF EXISTS states CASCADE;

-- States
CREATE TABLE states (
  id SERIAL PRIMARY KEY,
  state_name VARCHAR(255) NOT NULL,
  loc_state_name VARCHAR(255),
  state_abbr TEXT NOT NULL DEFAULT '',
  slug TEXT NOT NULL DEFAULT '',
  country_abbr TEXT NOT NULL DEFAULT '',
  country_id INTEGER NOT NULL DEFAULT 1
);

-- Districts
CREATE TABLE districts (
  id SERIAL PRIMARY KEY,
  district_name TEXT NOT NULL,
  loc_district_name TEXT,
  slug TEXT NOT NULL DEFAULT '',
  state_id INTEGER
);

-- Blocks
CREATE TABLE blocks (
  id SERIAL PRIMARY KEY,
  block_name TEXT NOT NULL,
  loc_block_name TEXT,
  slug TEXT NOT NULL DEFAULT '',
  district_id INTEGER
);

-- Villages
CREATE TABLE villages (
  id SERIAL PRIMARY KEY,
  village_name TEXT NOT NULL,
  loc_village_name TEXT,
  slug TEXT NOT NULL DEFAULT '',
  block_id INTEGER NOT NULL DEFAULT 0,
  type TEXT
);

-- Product Categories
CREATE TABLE product_category (
  id SERIAL PRIMARY KEY,
  category_name TEXT NOT NULL DEFAULT '',
  loc_category_name TEXT NOT NULL DEFAULT '',
  ordering INTEGER,
  is_sure INTEGER,
  photo_name VARCHAR(50),
  slug TEXT DEFAULT ''
);

-- Measure Unit
CREATE TABLE measure_unit (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  loc_name TEXT NOT NULL DEFAULT '',
  "order" INTEGER NOT NULL DEFAULT 0
);

-- User List
CREATE TABLE user_list (
  id SERIAL PRIMARY KEY,
  date TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  name TEXT NOT NULL DEFAULT '',
  mobile TEXT NOT NULL DEFAULT '',
  state_id INTEGER NOT NULL DEFAULT 0,
  district_id INTEGER NOT NULL DEFAULT 0,
  block_id INTEGER NOT NULL DEFAULT 0,
  village_id INTEGER NOT NULL DEFAULT 0,
  agent_id INTEGER,
  user_type TEXT NOT NULL DEFAULT '1',
  username TEXT,
  password TEXT,
  email TEXT,
  role TEXT DEFAULT 'user',
  status TEXT DEFAULT 'active'
);

-- Dukaan (Business) List
CREATE TABLE dukaan_list (
  id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL DEFAULT 1,
  dukaan_name TEXT NOT NULL DEFAULT '',
  dukaan_addr TEXT NOT NULL DEFAULT '',
  dukaandar_name TEXT NOT NULL DEFAULT '',
  contact_no TEXT NOT NULL DEFAULT '',
  dukaan_desc TEXT NOT NULL DEFAULT '',
  email TEXT NOT NULL DEFAULT '',
  video_name TEXT NOT NULL DEFAULT '',
  audio_name TEXT NOT NULL DEFAULT '',
  dukaan_img_id INTEGER NOT NULL DEFAULT 1,
  shop_categories TEXT,
  paid INTEGER NOT NULL DEFAULT 0,
  status TEXT DEFAULT 'pending'
);

-- Dukaan Photos
CREATE TABLE dukaan_photos (
  id SERIAL PRIMARY KEY,
  photo_name TEXT NOT NULL DEFAULT '',
  prod_id INTEGER
);

-- Dukaan Products
CREATE TABLE dukaan_products (
  id SERIAL PRIMARY KEY,
  prod_name TEXT NOT NULL DEFAULT '',
  prod_desc TEXT,
  prod_detailed_desc TEXT,
  prod_amt TEXT,
  shop_id INTEGER,
  cat_id INTEGER,
  quantity FLOAT,
  unit TEXT,
  is_del INTEGER NOT NULL DEFAULT 0
);

-- New Registration Form List
CREATE TABLE new_reg_form_list (
  id SERIAL PRIMARY KEY,
  date TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  name TEXT NOT NULL DEFAULT '',
  name_of_business VARCHAR(100) NOT NULL DEFAULT '',
  photo_name TEXT NOT NULL DEFAULT '',
  state_id INTEGER NOT NULL DEFAULT 0,
  dist_id INTEGER NOT NULL DEFAULT 0,
  blk_id INTEGER NOT NULL DEFAULT 0,
  vill_id INTEGER NOT NULL DEFAULT 0,
  pincode TEXT NOT NULL DEFAULT '',
  email TEXT NOT NULL DEFAULT '',
  business_desc TEXT NOT NULL DEFAULT '',
  cat_1 INTEGER NOT NULL DEFAULT 0,
  cat_2 INTEGER NOT NULL DEFAULT 0,
  cat_3 INTEGER NOT NULL DEFAULT 0,
  whatsapp TEXT NOT NULL DEFAULT '',
  status TEXT DEFAULT 'pending'
);

-- New Registration Job CV
CREATE TABLE new_reg_job_cv (
  id SERIAL PRIMARY KEY,
  date TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  name TEXT NOT NULL DEFAULT '',
  email TEXT NOT NULL DEFAULT '',
  mobile TEXT NOT NULL DEFAULT '',
  cv_upload TEXT NOT NULL DEFAULT ''
);

-- New Registration Product List
CREATE TABLE new_reg_prod_list (
  id SERIAL PRIMARY KEY,
  prod_name TEXT NOT NULL DEFAULT '',
  prod_desc TEXT NOT NULL DEFAULT '',
  prod_amt TEXT NOT NULL DEFAULT '',
  prod_photo TEXT NOT NULL DEFAULT '',
  shop_reg_id TEXT NOT NULL DEFAULT ''
);

-- Default admin user (password: admin123)
INSERT INTO user_list (id, name, mobile, state_id, district_id, block_id, village_id, user_type, username, password, role, status)
VALUES (999999, 'Administrator', '0000000000', 0, 0, 0, 0, '9', 'admin', '$2a$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj4tbw6d7Bqm', 'admin', 'active')
ON CONFLICT (id) DO NOTHING;
`;

// Table → column order mapping (matches the MySQL INSERT column list)
const TABLE_COLUMNS = {
  states: ['id','state_name','loc_state_name','state_abbr','slug','country_abbr','country_id'],
  districts: ['id','district_name','loc_district_name','slug','state_id'],
  blocks: ['id','block_name','loc_block_name','slug','district_id'],
  villages: ['id','village_name','loc_village_name','slug','block_id','type'],
  product_category: ['id','category_name','loc_category_name','ordering','is_sure','photo_name','slug'],
  measure_unit: ['id','name','loc_name','order'],
  user_list: ['id','date','name','mobile','state_id','district_id','block_id','village_id','agent_id','user_type'],
  dukaan_list: ['id','user_id','dukaan_name','dukaan_addr','dukaandar_name','contact_no','dukaan_desc','email','video_name','audio_name','dukaan_img_id','shop_categories','paid','status'],
  dukaan_photos: ['id','photo_name','prod_id'],
  dukaan_products: ['id','prod_name','prod_desc','prod_detailed_desc','prod_amt','shop_id','cat_id','quantity','unit','is_del'],
  new_reg_form_list: ['id','date','name','name_of_business','photo_name','state_id','dist_id','blk_id','vill_id','pincode','email','business_desc','cat_1','cat_2','cat_3','whatsapp','status'],
  new_reg_job_cv: ['id','date','name','email','mobile','cv_upload'],
  new_reg_prod_list: ['id','prod_name','prod_desc','prod_amt','prod_photo','shop_reg_id'],
};

// ─── SQL Parser ──────────────────────────────────────────────────────────────

function extractInserts(sql) {
  const results = [];
  // Match full INSERT INTO `table` (...cols...) VALUES\n(...rows...);
  const insertRegex = /INSERT INTO `(\w+)` \(([^)]+)\) VALUES\s*([\s\S]+?);\s*(?=--|\n\n|$)/gm;
  let match;
  while ((match = insertRegex.exec(sql)) !== null) {
    const tableName = match[1];
    const cols = match[2].replace(/`/g, '').split(',').map(c => c.trim());
    const valuePart = match[3].trim();
    
    // Parse individual row tuples
    const rows = parseTuples(valuePart);
    results.push({ table: tableName, cols, rows });
  }
  return results;
}

function parseTuples(input) {
  const rows = [];
  let depth = 0;
  let current = '';
  let inString = false;
  let escapeNext = false;

  for (let i = 0; i < input.length; i++) {
    const ch = input[i];

    if (escapeNext) { current += ch; escapeNext = false; continue; }
    if (ch === '\\') { current += ch; escapeNext = true; continue; }
    if (ch === "'" && !escapeNext) { inString = !inString; current += ch; continue; }
    if (inString) { current += ch; continue; }

    if (ch === '(') {
      depth++;
      if (depth === 1) { current = ''; continue; }
    }
    if (ch === ')') {
      depth--;
      if (depth === 0) {
        rows.push(parseRow(current.trim()));
        current = '';
        continue;
      }
    }
    if (depth > 0) current += ch;
  }
  return rows;
}

function parseRow(rowStr) {
  const values = [];
  let i = 0;
  while (i < rowStr.length) {
    // Skip leading whitespace and commas
    while (i < rowStr.length && (rowStr[i] === ',' || rowStr[i] === ' ')) i++;
    if (i >= rowStr.length) break;

    if (rowStr[i] === "'") {
      // String literal
      let val = '';
      i++; // skip opening quote
      while (i < rowStr.length) {
        if (rowStr[i] === '\\') {
          i++;
          const esc = rowStr[i];
          if (esc === 'n') val += '\n';
          else if (esc === 't') val += '\t';
          else if (esc === 'r') val += '\r';
          else val += esc;
          i++;
        } else if (rowStr[i] === "'") {
          i++; // skip closing quote
          break;
        } else {
          val += rowStr[i++];
        }
      }
      values.push(val);
    } else {
      // Numeric or NULL
      let val = '';
      while (i < rowStr.length && rowStr[i] !== ',') {
        val += rowStr[i++];
      }
      val = val.trim();
      if (val.toUpperCase() === 'NULL') values.push(null);
      else if (val === '') values.push(null);
      else values.push(isNaN(Number(val)) ? val : Number(val));
    }
  }
  return values;
}

// ─── Load AUTO_INCREMENT values ───────────────────────────────────────────────
function extractAutoIncrements(sql) {
  const map = {};
  const regex = /ALTER TABLE `(\w+)`\s+MODIFY `id`[^A]+AUTO_INCREMENT=(\d+)/g;
  let m;
  while ((m = regex.exec(sql)) !== null) {
    map[m[1]] = parseInt(m[2]);
  }
  return map;
}

// ─── Main Migration ───────────────────────────────────────────────────────────
async function migrate() {
  const client = await pool.connect();

  try {
    console.log('\n📖 Reading SQL file...');
    const sql = fs.readFileSync(SQL_FILE, 'utf8');

    console.log('🏗️  Creating PostgreSQL schema...');
    await client.query(SCHEMA);
    console.log('   ✔ Schema created\n');

    const inserts = extractInserts(sql);
    const autoIncs = extractAutoIncrements(sql);

    let totalRows = 0;

    for (const { table, rows } of inserts) {
      if (!TABLE_COLUMNS[table]) {
        console.log(`   ⚠ Skipping unknown table: ${table}`);
        continue;
      }
      if (!rows.length) continue;

      const cols = TABLE_COLUMNS[table];
      // Quote "order" reserved word
      const quotedCols = cols.map(c => c === 'order' ? '"order"' : c).join(', ');
      const placeholders = cols.map((_, i) => `$${i + 1}`).join(', ');
      const insertSQL = `INSERT INTO ${table} (${quotedCols}) VALUES (${placeholders}) ON CONFLICT (id) DO NOTHING`;

      let imported = 0;
      let failed = 0;

      for (const row of rows) {
        // Fill missing values with null
        const values = cols.map((_, i) => (row[i] !== undefined ? row[i] : null));
        try {
          await client.query(insertSQL, values);
          imported++;
        } catch (err) {
          failed++;
          if (process.env.VERBOSE === '1') {
            console.error(`   ✘ [${table}] row error: ${err.message}`);
          }
        }
      }

      totalRows += imported;
      console.log(`   ✔ ${table.padEnd(24)} ${imported} rows imported${failed ? `  (${failed} skipped)` : ''}`);

      // Set sequence start for SERIAL columns
      if (autoIncs[table]) {
        const seq = autoIncs[table];
        try {
          // Create a sequence or update it 
          await client.query(`
            CREATE SEQUENCE IF NOT EXISTS ${table}_id_seq START ${seq};
            ALTER TABLE ${table} ALTER COLUMN id SET DEFAULT nextval('${table}_id_seq');
            SELECT setval('${table}_id_seq', GREATEST(${seq}, (SELECT COALESCE(MAX(id),1) FROM ${table})));
          `);
        } catch (err) {
          // Sequence may already exist or other error, log if verbose
          if (process.env.VERBOSE === '1') {
            console.error(`   ✘ [${table}] sequence error: ${err.message}`);
          }
        }
      }
    }

    console.log(`\n✅ Migration complete! ${totalRows} total rows imported.`);
    console.log('\n💡 Admin login: username=admin | password=admin123');
    console.log('   ⚠  Change the admin password immediately after first login!\n');

  } catch (err) {
    console.error('\n❌ Migration failed:', err.message);
    throw err;
  } finally {
    client.release();
    await pool.end();
  }
}

migrate().catch((e) => { console.error(e); process.exit(1); });
