const fs = require('fs');

const SQL_FILE = 'e:/WORKS/zyt/DeshKhoj-Code-Reference/u519989786_dk.sql';
const sql = fs.readFileSync(SQL_FILE, 'utf8');

function extractInserts(sql) {
  const results = [];
  const insertRegex = /INSERT INTO `(\w+)` \(([^)]+)\) VALUES\s*([\s\S]+?);\s*(?=--|\n\n|$)/gm;
  let match;
  while ((match = insertRegex.exec(sql)) !== null) {
    const tableName = match[1];
    const cols = match[2].replace(/`/g, '').split(',').map(c => c.trim());
    const valuePart = match[3].trim();
    
    // Parse individual row tuples
    const rows = parseTuples(valuePart);
    results.push({ table: tableName, cols, rows: rows.length });
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
        rows.push(1); // just counting for test
        current = '';
        continue;
      }
    }
    if (depth > 0) current += ch;
  }
  return rows;
}

const inserts = extractInserts(sql);
console.log('Parsed Tables:');
inserts.forEach(i => console.log(`- ${i.table}: ${i.rows} rows`));
