const bcrypt = require('bcryptjs'); 
require('dotenv').config(); 
const { Client } = require('pg'); 

async function run() { 
  const hash = await bcrypt.hash('admin123', 12); 
  const c = new Client({connectionString: process.env.DATABASE_URL}); 
  await c.connect(); 
  await c.query(`UPDATE user_list SET password = '${hash}' WHERE username = 'admin'`); 
  console.log('Admin password updated to admin123'); 
  await c.end(); 
} 
run();
