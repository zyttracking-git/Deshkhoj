import { Pool as PGPool } from 'pg';
import mysql, { Pool as MySQLPool } from 'mysql2/promise';
import dotenv from 'dotenv';
dotenv.config();

let pgPool: PGPool | null = null;
let mysqlPool: MySQLPool | null = null;

const isMySQL = process.env.DATABASE_URL?.startsWith('mysql://') || process.env.DB_TYPE === 'mysql';

if (isMySQL) {
  mysqlPool = mysql.createPool({
    uri: process.env.DATABASE_URL,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
  });
  console.log('Using MySQL Pool');
} else {
  pgPool = new PGPool({
    connectionString: process.env.DATABASE_URL || 'postgresql://postgres:admin@localhost:5432/deshkhoj',
  });
  console.log('Using PostgreSQL Pool');
}

export const query = async (text: string, params: any[] = []): Promise<{ rows: any[]; insertId: number | null }> => {
  if (mysqlPool) {
    // MySQL uses ? placeholders natively
    const [rows, fields] = await mysqlPool.execute(text, params);
    let insertId = null;
    if ((rows as any).insertId) {
      insertId = (rows as any).insertId;
    }
    return { rows: Array.isArray(rows) ? rows : [rows], insertId };
  } else {
    // Convert basic ? parameter syntax to Postgres $1, $2, etc.
    let paramIndex = 1;
    let pgText = text.replace(/\?/g, () => `$${paramIndex++}`);
    
    // Provide basic polyfill for `insertId` on INSERTs by adding RETURNING id
    if (pgText.trim().toUpperCase().startsWith('INSERT') && !pgText.toUpperCase().includes('RETURNING')) {
      pgText += ' RETURNING id';
    }

    const result = await pgPool!.query(pgText, params);
    const rows = result.rows;
    let insertId = null;
    if (rows && rows.length > 0 && rows[0].id) {
      insertId = rows[0].id;
    }
    
    return { rows, insertId };
  }
};

export default { pgPool, mysqlPool };
