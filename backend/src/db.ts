import mysql from 'mysql2/promise';
import dotenv from 'dotenv';

dotenv.config();

const pool = mysql.createPool({
  host: process.env.DB_HOST || '127.0.0.1',
  user: process.env.DB_USER || 'u519989786_admn_deshkhoj2',
  password: process.env.DB_PASSWORD || '3cCrV?fKp/0',
  database: process.env.DB_NAME || 'u519989786_deshkhoj2',
  port: parseInt(process.env.DB_PORT || '3306', 10),
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

// Helper to match the previous PG interface: query(text, params)
export const query = async (sql: string, params?: any[]): Promise<{ rows: any[]; insertId: number | null }> => {
  const [result] = await pool.execute(sql, params || []);
  
  // If it's a SELECT, result is an array. If it's an INSERT/UPDATE, result is a ResultSetHeader object.
  const rows = Array.isArray(result) ? (result as any[]) : [];
  const insertId = !Array.isArray(result) ? (result as any).insertId : null;
  
  return { rows, insertId };
};

export default pool;
