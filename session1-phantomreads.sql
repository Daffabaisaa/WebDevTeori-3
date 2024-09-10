CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50)
);

BEGIN;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- Terjadi Phantom Read
SELECT * FROM employees WHERE department = 'Sales';
-- COMMIT;

-- BEGIN;
-- SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- -- Perbaikan
-- SELECT * FROM employees WHERE department = 'Sales';
-- COMMIT;

drop table employees;