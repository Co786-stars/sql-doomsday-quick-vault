-- ---------------------------------------------------------------------------
-- SELECT COMMAND EXAMPLES
-- ---------------------------------------------------------------------------

-- Select all columns from the table
SELECT * 
FROM users;


-- Select specific (particular) columns
SELECT full_name, 
	   email, 
	   department 
FROM users;

-- Select distinct values (no duplicates)
SELECT DISTINCT full_name 
FROM users;

-- Count distinct values
SELECT COUNT(DISTINCT joining_date) 
FROM users;

-- Count the number of rows in a column
SELECT COUNT(full_name) 
FROM users;


-- Filtering the objects
SELECT full_name, 
	   project_name
FROM users
WHERE full_name = 'wizard';


-- Sorting result in ASC or DESC
SELECT full_name, joining_date
FROM users
ORDER BY full_name ASC;


-- Note alias 
SELECT 
    customer_name AS client_name,
    amount AS total_amount,
    paid_status AS status,
    due_date AS overdue_date
FROM invoices
WHERE customer_name IN ('Ravi Kumar', 'Sneha Sharma', 'Priya Singh');



-- Grouping and aggregation 
-- NEXT DAY GROUP BY COMMANDS__


 /* ---------------------------------------------------------------------------
   SQL SELECT COMMAND GUIDE
   ---------------------------------------------------------------------------

   Definition:
   The SELECT command is a DQL (Data Query Language) statement used to 
   retrieve data from one or more tables. It is read-only and does not 
   modify the data.

   Key Points:
   - SELECT can fetch all columns (*) or specific columns.
   - WHERE filters rows based on conditions.
   - DISTINCT removes duplicate values.
   - COUNT() and other aggregate functions summarize data.
   - ORDER BY sorts results.
   - GROUP BY groups rows for aggregation.

   ---------------------------------------------------------------------------
   BASIC SYNTAX EXAMPLES
   ---------------------------------------------------------------------------

   -- Select all columns from a table
   SELECT * 
   FROM table_name;

   -- Select specific columns
   SELECT column1, column2 
   FROM table_name;

   -- Count rows in a column
   SELECT COUNT(column1) 
   FROM table_name;

   -- Select distinct values (no duplicates)
   SELECT DISTINCT column1 
   FROM table_name;

   -- Count distinct values
   SELECT COUNT(DISTINCT column1) 
   FROM table_name;

   ---------------------------------------------------------------------------
   ADVANCED USAGE
   ---------------------------------------------------------------------------

   -- Filtering rows
   SELECT column1, column2
   FROM table_name
   WHERE column1 > 100;

   -- Sorting results
   SELECT column1, column2
   FROM table_name
   ORDER BY column1 DESC;

   -- Grouping and aggregation
   SELECT column1, COUNT(*)
   FROM table_name
   GROUP BY column1;

   -- Filtering grouped results
   SELECT column1, COUNT(*)
   FROM table_name
   GROUP BY column1
   HAVING COUNT(*) > 5;

   ---------------------------------------------------------------------------
   INDUSTRY STANDARD FORM
   ---------------------------------------------------------------------------

   ✔ Columns listed clearly
   ✔ Proper indentation
   ✔ Aliases used for readability
   ✔ Easier for teamwork and debugging
   ✔ Matches enterprise SQL practices

   Non-Industry Example:
   SELECT column1,column2 FROM table_name WHERE column1>100;

   Industry Standard Example:
   SELECT column1, column2
   FROM table_name
   WHERE column1 > 100;

   ---------------------------------------------------------------------------
   NOTES
   ---------------------------------------------------------------------------
   - Avoid SELECT * in production; specify columns explicitly.
   - Use aliases for clarity when joining multiple tables.
   - SELECT is safe (does not change data).
   - Combine with WHERE, ORDER BY, GROUP BY, HAVING for powerful queries.
   - SELECT statement is a fundamental part of SQL used to select existing 
     records from a database.
   - If we want to retrieve all columns without specifying each one individually, 
     we can use the asterisk (*).
   - SELECT DISTINCT is used to retrieve unique values from a specified column.
   - SELECT DISTINCT ensures that duplicate values are eliminated, and only 
     distinct (unique) values are returned.
   ---------------------------------------------------------------------------
*/


-- ---------------------------------------------------------------------------
-- INSERT COMMAND EXAMPLE (Extra Reference)
-- ---------------------------------------------------------------------------

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
    10,
    'Vinasha Shikawat',
    'Vinasha43@example.com',
    'NovaInfo',
    'Data Analytics',
    'vK&%#32Q',
    '2026-03-11',
    20000.50
);

-- Always verify inserted data:
SELECT * 
FROM users;

