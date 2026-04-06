require('dotenv').config();
const { Client } = require('pg');
async function run() {
  const c = new Client({connectionString: process.env.DATABASE_URL});
  await c.connect();
  
  // Fix all sequences for all tables
  const tables = ['dukaan_list', 'user_list', 'dukaan_products', 'dukaan_reviews', 'dukaan_photos'];
  
  for (const table of tables) {
    try {
      await c.query(`SELECT setval(pg_get_serial_sequence('${table}', 'id'), COALESCE(MAX(id), 1)) FROM ${table}`);
      const res = await c.query(`SELECT last_value FROM ${table}_id_seq`);
      console.log(`${table}: sequence reset to ${res.rows[0].last_value}`);
    } catch(e) {
      console.log(`${table}: skipped (${e.message.split('\n')[0]})`);
    }
  }
  
  await c.end();
  console.log('\nAll sequences fixed!');
}
run();
