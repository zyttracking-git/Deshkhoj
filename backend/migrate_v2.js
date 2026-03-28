const { Pool } = require('pg');
require('dotenv').config();

async function migrate() {
  const pool = new Pool({ connectionString: process.env.DATABASE_URL });
  try {
    console.log("Adding columns to dukaan_list...");
    await pool.query("ALTER TABLE dukaan_list ADD COLUMN IF NOT EXISTS years_established INTEGER DEFAULT 0");

    console.log("Creating dukaan_reviews table...");
    await pool.query(`
      CREATE TABLE IF NOT EXISTS dukaan_reviews (
        id SERIAL PRIMARY KEY,
        shop_id INTEGER REFERENCES dukaan_list(id) ON DELETE CASCADE,
        user_name TEXT NOT NULL,
        rating INTEGER NOT NULL CHECK (rating >= 1 AND rating <= 5),
        comment TEXT,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
      )
    `);

    console.log("\nSearching for Jewellery Category...");
    const cats = await pool.query("SELECT id, category_name FROM product_category WHERE category_name ILIKE '%Jewellery%' OR category_name ILIKE '%Gold%' OR category_name ILIKE '%Sona%'");
    console.log("Found:", JSON.stringify(cats.rows, null, 2));

  } catch (err) {
    console.error(err);
  } finally {
    await pool.end();
  }
}

migrate();
