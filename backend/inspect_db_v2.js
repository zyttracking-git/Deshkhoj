const { Pool } = require('pg');
require('dotenv').config();

async function inspect() {
  const pool = new Pool({ connectionString: process.env.DATABASE_URL });
  try {
    console.log("Categories:");
    const cats = await pool.query("SELECT id, category_name FROM product_category LIMIT 20");
    console.log(JSON.stringify(cats.rows, null, 2));

    console.log("\nDukaan List Columns:");
    const cols = await pool.query("SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'dukaan_list'");
    console.log(JSON.stringify(cols.rows, null, 2));
  } catch (err) {
    console.error(err);
  } finally {
    await pool.end();
  }
}

inspect();
