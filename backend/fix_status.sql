-- Set default status to pending for new businesses
ALTER TABLE dukaan_list ALTER COLUMN status SET DEFAULT 'pending';

-- Fix existing rows: 
-- 1. All older records imported from SQL should be 'active'
UPDATE dukaan_list SET status = 'active' WHERE status IS NULL OR status = '';

-- 2. Make our test entries 'pending' so they show up in the admin dashboard inbox
UPDATE dukaan_list SET status = 'pending' WHERE dukaan_name = 'test';

-- 3. In case any registration was already submitted today
UPDATE dukaan_list SET status = 'pending' WHERE status = 'active' AND id > 209;
