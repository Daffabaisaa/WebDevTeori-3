BEGIN;
UPDATE example_table SET data = 'Updated by Transaction B' WHERE id = 2;
-- Tunggu beberapa detik
SELECT pg_sleep(10);
UPDATE example_table SET data = 'Updated by Transaction B' WHERE id = 1;
COMMIT;
