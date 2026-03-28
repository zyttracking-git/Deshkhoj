const { Pool } = require('pg');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '.env') });

const pool = new Pool({ connectionString: process.env.DATABASE_URL });

async function fixSequences() {
  const tables = [
    'states', 'districts', 'blocks', 'villages', 'product_category', 
    'measure_unit', 'user_list', 'dukaan_list', 'dukaan_photos', 
    'dukaan_products', 'new_reg_form_list', 'new_reg_job_cv', 'new_reg_prod_list'
  ];
  
  for (const table of tables) {
    try {
      const res = await pool.query(`SELECT COALESCE(MAX(id), 0) + 1 as next_id FROM ${table}`);
      const nextId = parseInt(res.rows[0].next_id);
      const seqName = `${table}_id_seq`;
      
      // Ensure the sequence matches the current max id
      await pool.query(`SELECT setval('${seqName}', ${nextId}, false)`);
      console.log(`✅ Updated ${seqName} to ${nextId}`);
    } catch (err) {
      console.log(`❌ Failed for ${table}: ${err.message}`);
    }
  }
  process.exit(0);
}

fixSequences().catch(err => {
  console.error(err);
  process.exit(1);
});
