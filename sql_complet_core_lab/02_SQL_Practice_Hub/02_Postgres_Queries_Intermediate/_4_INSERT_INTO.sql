-- ---------------------------------------------------------------------------
-- INSERT COMMAND EXAMPLES
-- ---------------------------------------------------------------------------

-- Inserting a single record into the users table
-- Industry‑standard formatting for single‑row insertion
INSERT INTO users (
    emp_id,
    full_name,
    email,
    project_name,
    department,
    password_hash,
    joining_date,
    emp_salary
)
VALUES (
    1,
    'wizard',
    'winza123@gmail.com',
    'NcryCore',
    'Information Technology',
    'zar574#WIZ',
    '2026-03-11',
    12280.00
);

-- Inserting multiple records into the users table
-- Industry‑standard formatting for multi‑row insertion
INSERT INTO users (
    emp_id,
    full_name,
    email,
    project_name,
    department,
    password_hash,
    joining_date,
    emp_salary
)
VALUES
    (2, 'Aditya Raj', 'aditya@example.com', 'NcryCore', 'IT', 'pass123', '2026-03-12', 15000.00),
    (3, 'Rohit Kumar', 'rohit@example.com', 'CoreTech', 'HR', 'secure456', '2026-03-13', 18000.00),
    (4, 'Neha Singh', 'neha@example.com', 'DevOps', 'Engineering', 'hash789', '2026-03-14', 20000.00);



-- Inserting data using the shorter version
-- (only works if values follow exact column order)
INSERT INTO users
VALUES (
    5,
    'Reward Warya',
    'Rya329@outlook.com',
    'CogniTec',
    'Programmer',
    'rap09$#ay',
    '2026-03-11',
    13285.00
);

-- Checking inserted data
SELECT * 
FROM users;

/*
Definition:
The INSERT command is a DML (Data Manipulation Language) statement used to add new
records (rows) into an existing table. It supports inserting a single row or multiple rows.

Key Points:
- INSERT INTO adds data into a table that already exists.
- Column names must match the table structure and follow the correct order.
- Values must match the data types defined in the table (INT, VARCHAR, DATE, NUMERIC, etc.).
- Single-row insertion uses one VALUES() block.
- Multiple-row insertion uses multiple sets of values in a single INSERT statement.
- If all columns are inserted in the exact table order, column names can be skipped
  (not recommended for professional use).

Syntax:
INSERT INTO table_name (
    column1,
    column2,
    column3,
    ...
)
VALUES (
    value1,
    value2,
    value3,
    ...
);


Multiple Insert:
INSERT INTO table_name (
    column1,
    column2,
    ...
)
VALUES
    (value1, value2, ...),
    (value1, value2, ...),
    ... ;
*/



-- Note : -
-- The INSERT command is used to add new rows into a table.
-- It supports both single‑row and multi‑row insertion.
-- Recommended: INSERT INTO table_name (columns...) VALUES (...);   -- Safe & professional
-- Shorter version: INSERT INTO table_name VALUES (...);            -- Only works when:
--      1. Number of values = number of columns
--      2. Values follow the exact column order defined in the table
-- Multi‑row insertion uses multiple VALUES() blocks in a single statement.


-- VVI (Important Notes) VVI :-
-- If a column has a DEFAULT value, you can omit it in INSERT; 
-- the database will automatically fill it with the default instead of requiring input.

-- If you list a column in INSERT, you must give a value for it. 
-- To use the DEFAULT, simply leave that column out of the column list.



-- ________________________________________________________________________________
-- The code written above follows proper formatting standards.
-- ________________________________________________________________________________
-- ✔ Improves readability
-- ✔ Makes debugging easier
-- ✔ Matches industry‑standard SQL style
-- ✔ Commonly used in real companies and production systems
-- ✔ Ideal for tables with many columns or long INSERT statements
-- ________________________________________________________________________________



-- ________________________________________________________________________________
-- The code written below follows proper formatting but not professional standards.
-- ________________________________________________________________________________
-- ✔ Works
-- ✔ Valid SQL
-- ❌ Harder to read
-- ❌ Not ideal for teamwork or large projects

INSERT INTO users(emp_id, full_name, email, project_name, department, password_hash, joining_date, emp_salary)
VALUES (9, 'Vikram Sinha', 'vikram.sinha@example.com', 'DataPulse', 'Business Analytics', 'Vikram!Data456', '2026-08-10', 22000.00);


INSERT INTO users
VALUES -- Shorter version of INSERT (only works if values follow exact column order)
    (6, 'Karan Mehta', 'karan.mehta@example.com', 'SkyBridge', 'Cloud Engineering', 'Karan#Sky789', '2026-06-18', 19500.00),
    (7, 'Simran Kaur', 'simran.kaur@example.com', 'AeroLink', 'Quality Assurance', 'Simran@QA2026', '2026-07-05', 17500.00),
    (8, 'Riya Verma', 'riya.verma@example.com', 'TechNova', 'Product Design', 'Riya*Design123', '2026-09-01', 20500.00);

