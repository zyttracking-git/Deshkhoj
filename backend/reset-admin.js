const { Pool } = require('pg');
const bcrypt = require('bcryptjs');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '.env') });

const pool = new Pool({ connectionString: process.env.DATABASE_URL });

async function resetAdmin() {
  try {
    const hash = await bcrypt.hash('admin123', 10);
    console.log('Resetting admin user to username=admin/password=admin123...');
    
    // Ensure table structure is correct (adding columns if they were somehow missed)
    await pool.query('ALTER TABLE user_list ADD COLUMN IF NOT EXISTS username TEXT');
    await pool.query('ALTER TABLE user_list ADD COLUMN IF NOT EXISTS password TEXT');
    await pool.query('ALTER TABLE user_list ADD COLUMN IF NOT EXISTS role TEXT DEFAULT \'user\'');

    await pool.query('DELETE FROM user_list WHERE username = \'admin\' OR id = 999999');
    
    await pool.query(
      'INSERT INTO user_list (id, name, mobile, state_id, district_id, block_id, village_id, user_type, username, password, role, status) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)',
      [999999, 'Administrator', '0000000000', 0, 0, 0, 0, '9', 'admin', hash, 'admin', 'active']
    );
    
    console.log('✅ Admin user reset successfully');
    process.exit(0);
  } catch (err) {
    console.error('❌ Error resetting admin:', err);
    process.exit(1);
  }
}

resetAdmin();
