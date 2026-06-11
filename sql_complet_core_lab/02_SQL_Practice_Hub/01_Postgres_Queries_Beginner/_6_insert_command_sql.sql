-- VERY IMPORTANT KEY TO WRITE THE SYNTAX in PROPER WAY : -

SELECT * FROM appusers;
INSERT INTO appusers(username, user_id, email, signup_date) VALUES 
('Ankit Raj',     232, 'xyz345@gmail.com', '2025-06-18'),
('Roshan kumar',  543, 'pnp432@gmail.com', '2019-05-15'),
('Manoj Raj',     114,  DEFAULT,           '2021-11-12'),
('Mohan Roy',     124, 'kol87@gmail.com',  '2023-01-20'),
('Ankit snaayal', 643, 'Mano930@gmail.com','2019-05-15');


-- FOCUS ON THAT BASIC PROBLEM IN FIRST YIME CORDING 
/*

1. COLUMN ORDER MATTERS :
-- WRONG: Values don't match column order
INSERT INTO employees (name, id, salary) VALUES (100, 'John', 50000);

-- RIGHT: Values match column order
INSERT INTO employees (id, name, salary) VALUES (100, 'John', 50000);



2. DATA TYPE COMPATIBILITY
-- WRONG: String in numeric column
INSERT INTO employees (id, name, salary) VALUES ('abc', 'John', 50000);

-- WRONG: Date format issues
INSERT INTO employees (hire_date) VALUES ('2024-13-45'); -- Invalid date



3. NOT NULL CONSTRAINTS : -
-- WRONG: Missing NOT NULL column
INSERT INTO employees (salary) VALUES (50000); -- Error if 'name' is NOT NULL

-- RIGHT: Provide all NOT NULL values
INSERT INTO employees (name, salary) VALUES ('John', 50000);




4. UNIQUE CONSTRAINT VIOLATIONS
-- WRONG: Duplicate unique/primary key
INSERT INTO employees (id, name) VALUES (1, 'John');
INSERT INTO employees (id, name) VALUES (1, 'Jane'); -- ERROR!

-- SOLUTION: Use ON CONFLICT
INSERT INTO employees (id, name) VALUES (1, 'Jane')
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name;




5. ALWAYS Specify Columns
-- BAD: Implicit column order
INSERT INTO employees VALUES (1, 'John', 50000, 'IT');

-- GOOD: Explicit columns (safer, more readable)
INSERT INTO employees (id, name, salary, department) 
VALUES (1, 'John', 50000, 'IT');



6. Use MULTIPLE ROWS for Bulk Inserts
-- SLOW: Multiple separate inserts
INSERT INTO employees (name) VALUES ('John');
INSERT INTO employees (name) VALUES ('Jane');
INSERT INTO employees (name) VALUES ('Bob');

-- FAST: Single multi-row insert
INSERT INTO employees (name) VALUES 
('John'),
('Jane'),
('Bob');


7. Use COPY for LARGE Datasets
-- For thousands of rows, use COPY (much faster)
COPY employees FROM '/path/to/data.csv' WITH CSV HEADER;


🔒 TRANSACTION SAFETY

8. Use TRANSACTIONS for Multiple Inserts
-- BAD: Partial failures can leave inconsistent data
INSERT INTO orders (id, total) VALUES (1, 100);
INSERT INTO order_items (order_id, product) VALUES (1, 'Product A'); -- What if this fails?


-- GOOD: Use transactions
BEGIN;
INSERT INTO orders (id, total) VALUES (1, 100);
INSERT INTO order_items (order_id, product) VALUES (1, 'Product A');
COMMIT;



9. Handle SERIAL/IDENTITY Columns Properly
-- DON'T manually insert into serial columns
INSERT INTO employees (id, name) VALUES (100, 'John'); -- Might conflict with sequence

-- LET PostgreSQL handle it
INSERT INTO employees (name) VALUES ('John'); -- Auto-generates ID



10. RETURNING Clause for Generated Values
-- Get auto-generated ID after insert
INSERT INTO employees (name, salary) 
VALUES ('John', 50000)
RETURNING id; -- Returns the generated serial ID


11. DEFAULT Values Behavior
-- These are EQUIVALENT
INSERT INTO employees (name) VALUES ('John');
INSERT INTO employees (name, salary) VALUES ('John', DEFAULT);


12. QUOTING Issues
-- WRONG: Using double quotes for values
INSERT INTO employees (name) VALUES ("John"); -- ERROR!

-- RIGHT: Use single quotes for values
INSERT INTO employees (name) VALUES ('John');

-- RIGHT: Double quotes for column/table names with spaces
INSERT INTO "Employee Table" ("Full Name") VALUES ('John Doe');


🎯 MOST COMMON MISTAKES

13. Missing Commas in Multi-row Inserts
-- WRONG: Missing comma
INSERT INTO employees (name) VALUES 
('John')
('Jane'); -- ERROR!

-- RIGHT: Proper commas
INSERT INTO employees (name) VALUES 
('John'),
('Jane');


14. SQL Injection Risk
-- VULNERABLE: Direct string concatenation
INSERT INTO users (name) VALUES ('$user_input'); -- DANGEROUS!

-- SAFE: Use parameterized queries
-- In application code, use prepared statements


15. Case Sensitivity
-- Table/column names are case-insensitive unless quoted
INSERT INTO Employees (Name) VALUES ('John'); -- Works
INSERT INTO "Employees" ("Name") VALUES ('John'); -- Only if created with quotes



16. Use INSERT...SELECT Wisely
-- Check what you're inserting first
SELECT id, name FROM source_table WHERE condition;

-- Then insert
INSERT INTO target_table (id, name)
SELECT id, name FROM source_table WHERE condition;


18. Handle Large Inserts in Batches
EXPLAIN ANALYZE INSERT INTO employees (name) VALUES ('John');


QUICK CHECKLIST Before INSERT
📋 Columns and values order match
📋 All NOT NULL columns have values
📋 Data types are compatible
📋 No unique constraint violations
📋 Using transactions for multiple related inserts
📋 Proper quoting of values and identifiers

*/

