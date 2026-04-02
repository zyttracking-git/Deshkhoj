#!/bin/bash
# Find the backend directory
DIR=$(find ~/ -name "package.json" -exec grep -l "deshkhoj-backend" {} \; | head -n 1 | xargs dirname)

if [ -z "$DIR" ]; then
  echo "Backend not found!"
  exit 1
fi

echo "Backend found at: $DIR"
cd "$DIR"

# Create/Update .env (CORRECTED CREDENTIALS WITH 9)
cat > .env << 'EOL'
PORT=5000
NODE_ENV=production
DB_HOST=127.0.0.1
DB_USER=u519989786_admn_deshkhoj2
DB_PASSWORD=3cCrV?fKp/0
DB_NAME=u519989786_deshkhoj2
DB_PORT=3306
JWT_SECRET=deshkhoj_super_secret_production_key_2024
ALLOWED_ORIGINS=*
EOL

echo ".env updated with correct credentials!"

# Import Data (if SQL exists)
SQL_FILE=$(find ~/ -name "u519989786_dk.sql" | head -n 1)
if [ -n "$SQL_FILE" ]; then
  echo "Importing data from $SQL_FILE..."
  # Use --force to skip errors if some triggers exist
  mysql -u u519989786_admn_deshkhoj2 -p'3cCrV?fKp/0' -h 127.0.0.1 u519989786_deshkhoj2 < "$SQL_FILE"
  echo "Data import complete!"
else
  echo "SQL backup not found, skipping import."
fi

# Restart App
touch index.js
touch server.js
touch server.ts
echo "Touch completed for restart."
