CREATE TABLE example_table (
    id SERIAL PRIMARY KEY,
    data TEXT
);

INSERT INTO example_table (data) VALUES ('Value 1'), ('Value 2');

select * from example_table;
drop table example_table;

BEGIN;
UPDATE example_table SET data = 'Updated by Transaction A' WHERE id = 1;
-- Tunggu beberapa detik
SELECT pg_sleep(10);
UPDATE example_table SET data = 'Updated by Transaction A' WHERE id = 2;
COMMIT;

