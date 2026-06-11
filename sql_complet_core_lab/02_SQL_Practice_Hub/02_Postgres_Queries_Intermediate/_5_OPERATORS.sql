-- ---------------------------------------------------------------------------
-- SQL OPERATORS — COMPLETE ENHANCED & INDUSTRY‑STANDARD)
-- ---------------------------------------------------------------------------

-- Industry‑Standard SQL Formatting
-- ARITHMETIC OPERATORS +, -, *, /, %
-- +
SELECT product,
       amount AS old_price,
       amount + 200 AS price
FROM sales;

-- *
SELECT full_name,
	   email,
	   department,
	   password_hash,
	   emp_salary AS old_salary,
	   emp_salary*2 AS new_salary
FROM users;

-- -
SELECT product,
	   category,
	   amount AS exact_salary,
	   amount - 100 AS deducted_salary
FROM sales;


-- /
SELECT full_name,
	   project_name,
	   department,
	   emp_salary AS inhand_salary,
	   emp_salary/2 AS deducted_salary,
	   ROUND(emp_salary/2, 2) AS deducted_salary -- r
FROM users;


-- %
SELECT id AS count_num,
       amount AS g_value,
	   amount%3 AS reminder
FROM sales;




-- Industry‑Standard SQL Formatting
-- COMPARISION OPERATORS =, !=, <>, <, <=, >, >=, 
-- =
SELECT full_name, 
	   email
FROM users
WHERE email = 'aditya@example.com';


-- !=, <>
SELECT full_name, 
	   project_name, 
	   department
FROM users
WHERE department <> 'IT' 


SELECT *
FROM users
WHERE project_name != 'NcryCore';


-- <
SELECT product,
	   amount,
	   sale_date
FROM sales
WHERE amount < 10001;


-- <= 
SELECT product,
	   amount,
	   sale_date
FROM sales
WHERE amount <= 1000;


-- >
SELECT product,
	   amount AS p_amount,
	   sale_date AS t_date
FROM sales
WHERE amount > 1000;


--  >=
SELECT product,
	   amount AS p_price,
	   sale_date AS date
FROM sales
WHERE amount >= 1000;




-- Industry‑Standard SQL Formatting
-- LOGICAL OPERATORS  AND, OR , NOT 
-- AND
SELECT 
	product, 
	category, 
	amount
FROM sales
WHERE 	amount >= 300 
	AND amount <= 1000; -- need to both conditiona re tr
	-- AND amount = 1200;


-- OR
SELECT *
FROM users
WHERE  department = 'Business Analytics'
	OR department = 'Cloud Engineering';


-- NOT
SELECT *
FROM users
WHERE 	NOT (department = 'cloud Engineering')
	AND NOT (emp_salary < 19500);
--❌ NOT was placed before column names instead of conditions
--❌ AS cannot be used in WHERE
--❌ SQL conditions must be written as expressions, not aliases



-- Industry‑Standard SQL Formatting
-- BITWISE OPERATORS (PostgreSQL)
-- &
SELECT 5 & 3;   -- AND  => 1

-- |
SELECT 5 | 3;   -- OR   => 7

-- #
SELECT 5 # 3;   -- XOR  => 6

-- ~
SELECT ~5;      -- NOT  => -6

-- >>
SELECT 5 >> 3;  -- Right Shift => 0

-- <<
SELECT 5 << 3;  -- Left Shift  => 40



-- Industry‑Standard SQL Formatting
-- SET OPERATORS UNION, UNION ALL, INTERSECT, EXCEPT
-- UNION
SELECT email AS email_id
FROM users
UNION
SELECT email AS email_id
FROM appuser;


-- UNION ALL
SELECT  full_name AS employ_name
FROM users
UNION ALL
SELECT user_name AS employ_name
FROM appuser;


-- INTERSECT
SELECT full_name AS employ_name
FROM users
INTERSECT
SELECT user_name AS employ_name
FROM appuser;


-- EXCEPT
SELECT LOWER(full_name) 
	AS employ_name
FROM users
EXCEPT
SELECT LOWER(user_name) 
	AS employ_name
FROM appuser; -- return query from first that not present in second 


SELECT email
	AS email_id
FROM appuser
EXCEPT
SELECT email
	AS email_id
FROM users
ORDER BY email_id ASC;



-- Industry‑Standard SQL Formatting
-- STRING OPERATORS ||
SELECT first_name || last_name
	AS student_name
FROM students;


SELECT first_name || ' ' || last_name
	AS student_name
FROM students;



-- Industry‑Standard SQL Formatting
-- OTHER IMPORTANT OPERATORS IN, BETWEEN, LIKE, IS NULL, IS NOT NULL
-- IN
SELECT first_name
	AS topper_names
FROM students
WHERE first_name  IN ('wizard', 'kabir', 'meera');


SELECT *
FROM students
WHERE roll IN (123, 128, 126, 125)
ORDER BY roll DESC;

-- BETWEEN




/*
	Definition:
	Operators are symbols or keywords used to perform operations on data stored
	in a database. SQL provides multiple categories of operators for performing
	calculations, comparisons, filtering, pattern matching, and combining results.
	
	SQL supports seven major categories of operators:
	1. Arithmetic Operators
	2. Comparison Operators
	3. Logical Operators
	4. Bitwise Operators
	5. Set Operators
	6. String Operators
	7. Other Operators (IN, BETWEEN, LIKE, IS NULL, etc.)
	
	
	---------------------------------------------------------------------------
	1. ARITHMETIC OPERATORS
	---------------------------------------------------------------------------
	
	Used to perform mathematical operations on numeric data.
	
	(+)  Addition
	(-)  Subtraction
	(*)  Multiplication
	(/)  Division
	(%)  Modulus (remainder)
	
	Example:
	SELECT emp_salary + 500 AS updated_salary
	FROM users;
	
	
	---------------------------------------------------------------------------
	2. COMPARISON OPERATORS
	---------------------------------------------------------------------------
	
	Used to compare two values. Returns TRUE, FALSE, or UNKNOWN.
	
	(=)     Equal to
	(>)     Greater than
	(<)     Less than
	(>=)    Greater than or equal to
	(<=)    Less than or equal to
	(<>)    Not equal to
	(!=)    Not equal to (alternative)
	
	Example:
	SELECT * 
	FROM users
	WHERE emp_salary > 15000;
	
	Note:
	SQL uses (=) for comparison, unlike other languages that use (==).
	
	
	---------------------------------------------------------------------------
	3. LOGICAL OPERATORS
	---------------------------------------------------------------------------
	
	Used to combine multiple conditions in a SQL query.
	
	AND   → All conditions must be TRUE
	OR    → At least one condition must be TRUE
	NOT   → Reverses the logical result
	
	Syntax Examples:
	SELECT column1 FROM YourTableName
	WHERE condition;
	
	SELECT column1, column2 
	FROM YourTableName
	WHERE	condition1 
		AND condition2;


	SELECT column1 
	FROM YourTableName
	WHERE  condition1 
		OR condition2;


	SELECT * 
	FROM YourTableName
	WHERE 	NOT condition 
		AND NOT condition;
	
	
	---------------------------------------------------------------------------
	5. SET OPERATORS
	---------------------------------------------------------------------------
	
	Used to combine results of two SELECT queries.
	
	UNION        → Combines results and removes duplicates
	UNION ALL    → Combines results including duplicates
	INTERSECT    → Returns common records from both queries
	EXCEPT       → Returns records from first query not present in second
	
	
	SELECT emp_id 
	FROM users_IT
	UNION
	SELECT emp_id 
	FROM users_HR;
	-- Combines results of both queries
	-- Removes duplicate rows
	-- Performs sorting internally (slower than UNION ALL)


	SELECT emp_id 
	FROM users_IT
	UNION ALL
	SELECT emp_id 
	FROM users_HR;
	-- Combines results of both queries
	-- Keeps duplicates
	-- Faster (no sorting)


	SELECT emp_id 
	FROM users_IT
	INTERSECT
	SELECT emp_id 
	FROM users_HR;
	-- Returns only common rows present in both queries
	-- Removes duplicates automatically


	SELECT emp_id 
	FROM users_IT
	EXCEPT
	SELECT emp_id
	FROM users_HR;
	-- Returns rows from first query that are not present in the second query
	-- Removes duplicates



	RULES FOR SET OPERATORS :- 
	Both SELECT statements must have same number of columns
	Corresponding columns must have compatible data types
	ORDER BY can be used only at the end of the final query
	
	
	-------------------------------------------------------------------------
	6. STRING OPERATORS (PostgreSQL)
	-------------------------------------------------------------------------
	String operators are used to join (concatenate) text values together.
	-- Operator:  (||)
	-- Name:      String Concatenation Operator
	-- Purpose:   Joins two or more strings together.
	
	(||)   String Concatenation Operator (ANSI SQL Standard)
	       → Joins two or more strings into one.
	
	Notes:
	(+) does NOT work for strings in PostgreSQL (only numeric addition).
	CONCAT() and CONCAT_WS() functions also exist, but (||) is the official operator.
	
	Examples:
	SELECT 'Hello' || ' World'; 
	    → Result: Hello World
	
	SELECT first_name || ' ' || last_name AS full_name
	FROM users;
	    → Combines first and last name
	
	SELECT 'User: ' || username AS user_info
	FROM users;
	    → Adds a label before the username
	
	SELECT first_name || ' - ' || department || ' (' || role || ')' AS details
	FROM employees;
	    → Complex concatenation example


	
	---------------------------------------------------------------------------
	7. OTHER IMPORTANT OPERATORS
	---------------------------------------------------------------------------
	
	IN          → Matches any value in a given list
	BETWEEN     → Checks if a value lies within a range (inclusive)
	LIKE        → Pattern matching using wildcards
	IS NULL     → Checks for NULL values
	IS NOT NULL → Checks for non‑NULL values
	
	Example : -
	SELECT column_name
	FROM table_name
	WHERE column_name IN (value1, value2, value3);
	
	BETWEEN Operator
	Returns rows where a value lies between two values (inclusive)
	SELECT *
	FROM table_name
	WHERE column_name BETWEEN 15000 AND 20000;
	
	
	LIKE Operator
	Used for pattern matching (%, _)
	SELECT *
	FROM table_name
	WHERE column_name LIKE 'A%';   -- Values starting with A
	
	
	IS NULL Operator
	Returns rows where the column contains NULL
	SELECT *
	FROM table_name
	WHERE column_name IS NULL;
	
	
	IS NOT NULL Operator
	Returns rows where the column contains a non‑NULL value
	SELECT *
	FROM table_name
	WHERE column_name IS NOT NULL;




	-------------------------------------------------------------------------------
	[*][*][*] ORDER BY CLAUSE — COMPLETE INDUSTRY STANDARDS NOTES - [*][*][*]
	-------------------------------------------------------------------------------
	Definition:
	ORDER BY is used to sort the result set of a SQL query in ascending (ASC)
	or descending (DESC) order. If no sorting order is specified, SQL uses
	ASC (ascending) by default.
	
	
	Example : -
	Sort entire table by one column (default ASC)
	SELECT *
	FROM table_name
	ORDER BY column_name;
	
	Sort in descending order
	SELECT *
	FROM table_name
	ORDER BY column_name DESC;
	
	Sort selected columns in ascending order
	SELECT column_name
	FROM table_name
	ORDER BY column_name ASC;
	
	Sort using multiple columns
	First column sorted ASC, second column sorted DESC
	SELECT *
	FROM table_name
	ORDER BY column1 ASC, column2 DESC;
	
	
	Key Points:
	 ✔ ORDER BY sorts numeric values from smallest → largest (ASC)
	 ✔ ORDER BY sorts text values alphabetically (A → Z)
	 ✔ Multiple columns can be used for sorting
	 ✔ ASC is default, DESC must be written explicitly
	 ✔ ORDER BY always comes at the end of a SELECT query
	
	
	---------------------------------------------------------------------------
	[*][*][*] UPDATE COMMAND — BSICS COMPLETE NOTES — [*][*][*] 
	---------------------------------------------------------------------------
	
	Definition:
	The UPDATE command is used to modify or change existing records in a table.
	It updates one or more columns based on the condition provided.
	If the WHERE clause is not used, ALL rows in the table will be updated.
	
	Example : -
	
	Update a single column
	UPDATE table_name
	SET column_name = value
	WHERE condition;
	
	
	Update multiple columns
	UPDATE table_name
	SET column1 = value1,
	    column2 = value2
	WHERE condition;
	
	
	Update all rows (no WHERE clause)
	UPDATE table_name
	SET column_name = column_name + 500;   -- Increases value for every row
	
	
	Change multiple fields for a specific record
	UPDATE table_name
	SET column1 = 'NewValue',
	    column2 = 25000,
	    column3 = column3 + 1
	WHERE id = 5;

	
	Key Points:
	 ✔ UPDATE modifies existing data (does not insert new rows)
	 ✔ WHERE is used to target specific rows
	 ✔ Without WHERE → every row gets updated
	 ✔ Multiple columns can be updated at once
	 ✔ Expressions can be used inside SET (e.g., column = column + 500)
	
	
	---------------------------------------------------------------------------
	——— IS NULL / IS NOT NULL —— [*][*][*] BASIC COMPLETE NOTES [*][*][*] —————
	---------------------------------------------------------------------------
	
	Definition:
	IS NULL and IS NOT NULL operators are used to check whether a column
	contains a NULL value or a non‑NULL value.
	
	Example : -
	
	Check for NULL values
	SELECT *
	FROM table_name
	WHERE column_name IS NULL;
	
	Check for NOT NULL values
	SELECT *
	FROM table_name
	WHERE column_name IS NOT NULL;
	
	Check multiple columns for NULL / NOT NULL
	SELECT column1, column2
	FROM table_name
	WHERE column1 IS NULL
	  AND column2 IS NOT NULL;
	
	
	Key Points:
	 ✔ NULL means "no value", "unknown", or "empty"
	 ✔ NULL is NOT equal to 0, NOT equal to '', and NOT equal to a space
	 ✔ Use IS NULL to check for NULL values
	 ✔ Use IS NOT NULL to check for non‑NULL values
	 ✔ Comparison operators (=, <>, !=) do NOT work with NULL
	
	
	
	---------------------------------------------------------------------------
	INDUSTRY‑STANDARD SQL FORMATTING (IMPORTANT)
	---------------------------------------------------------------------------
	✔ Always write SQL keywords in UPPERCASE (SELECT, FROM, WHERE, ORDER BY)
	✔ Place each major clause on a new line
	✔ Indent conditions under WHERE for readability
	✔ Use multi‑line formatting for long queries
	✔ Avoid writing everything in one line
	✔ Use meaningful table and column names
	✔ End statements with a semicolon (;)
	✔ Keep consistent spacing and alignment
*/

