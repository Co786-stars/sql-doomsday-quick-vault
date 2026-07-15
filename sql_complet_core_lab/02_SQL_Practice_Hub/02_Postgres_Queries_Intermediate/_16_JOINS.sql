-- INNER JOIN returns only the rows where the matching values exist in both tables

SELECT *
FROM students
INNER JOIN fees
ON students.student_id = fees.student_id;


-- INNER JOIN using aliases (x and y) to get the full matched table data

SELECT *
FROM students AS x
INNER JOIN fees AS y
ON x.student_id = y.student_id;


-- Selecting specific columns from both tables using INNER JOIN
-- If we do not use aliases, then we must write table_name.column_name

SELECT x.student_id, y.fee_id
FROM students AS x
INNER JOIN fees AS y
ON x.student_id = y.student_id;





-- LEFT JOIN returns all rows from the left table and only the matching rows from the right table

SELECT *
FROM students
LEFT JOIN fees
ON students.student_id = fees.student_id;


-- Swapping the table positions changes which table is treated as the LEFT table
-- Here, fees becomes the left table, so all fee records will appear

SELECT *
FROM fees
LEFT JOIN students
ON students.student_id = fees.student_id;


-- Selecting specific columns using LEFT JOIN
-- Shows all fee records, along with student details where available

SELECT 
    fees.fee_id,
    students.full_name,
    fees.semester_fee
FROM fees
LEFT JOIN students
ON students.student_id = fees.student_id;




-- RIGHT JOIN returns all rows from the RIGHT table 
-- and only the matching rows from the LEFT table

SELECT *
FROM students
RIGHT JOIN fees
ON students.student_id = fees.student_id;


-- Swapping table positions changes which table is treated as the RIGHT table
-- Here, students becomes the RIGHT table, so all student records will appear

SELECT *
FROM fees
RIGHT JOIN students
ON students.student_id = fees.student_id;


-- Selecting specific columns using RIGHT JOIN
-- Shows all student records (RIGHT table)
-- along with fee details where available

SELECT 
    students.full_name,
    fees.fee_id,
    fees.semester_fee
FROM fees
RIGHT JOIN students
ON students.student_id = fees.student_id;




-- FULL JOIN returns all rows from BOTH tables
-- Matching rows are combined, and non‑matching rows show NULL on the opposite side

SELECT *
FROM fees
FULL JOIN students
ON students.student_id = fees.student_id;


-- Swapping table positions does NOT change the result of FULL JOIN
-- FULL JOIN always returns all rows from both tables

SELECT *
FROM students
FULL JOIN fees
ON students.student_id = fees.student_id;




-- CROSS JOIN returns the Cartesian Product of both tables means (creates all possible combinations)
-- Every row from the first table is combined with every row from the second table
-- CROSS JOIN does NOT use an ON condition (and if written, it is ignored)

SELECT *
FROM students
CROSS JOIN fees;


-- Swapping table positions does NOT change the result
-- CROSS JOIN always multiplies rows from both tables

SELECT *
FROM fees
CROSS JOIN students;


SELECT *
FROM students;

-----------------------------------------------------------------
-- creating two table to practice joins in sql
--_____table 1_____--
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(50),
    course VARCHAR(50)
);

INSERT INTO students (
	student_id, 
	full_name, 
	course
) 
VALUES
	(1, 'Rohit Sharma', 'BCA'),
	(2, 'Amit Verma', 'BCA'),
	(3, 'Sneha Patel', 'MCA'),
	(4, 'Karan Malhotra', 'B.Tech'),
    (5, 'Priya Nair', 'MBA'),
    (6, 'Vikas Singh', 'M.Tech'),
    (7, 'Anjali Desai', 'B.Sc IT'),
    (8, 'Manoj Kumar', 'B.Com'),
	(9, 'Suresh Iyer', 'BBA'),
	(10, 'Neha Kapoor', 'M.Sc'),
	(11, 'Ravi Chauhan', 'BCA'),
	(12, 'Divya Menon', 'MBA'),
	(13, 'Harsh Vardhan', 'B.Tech');


--_____table 2_____--
CREATE TABLE fees (
    fee_id INT PRIMARY KEY,
    student_id INT,
    semester_fee INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO fees (
	fee_id, 
	student_id, 
	semester_fee
) 
VALUES
	(101, 1, 25000),
	(102, 2, 26000),
	(103, 3, 30000),
	(104, 4, 55000),
    (105, 5, 45000),
    (106, 6, 60000),
    (107, 7, 28000);

--------------------------------------------------------------------
-- [Starght Forward]:-
-- FOREIGN KEY → links two tables together
-- FOREIGN KEY → maintains relationship between tables
-- FOREIGN KEY → prevents invalid data
-- FOREIGN KEY → ensures data consistency
-- PRIMARY KEY → uniquely identifies a row
-- FOREIGN KEY → connects two tables using that primary key
---------------------------------------------------------------------

/*
	Definition:
	A JOIN in SQL is used to combine rows from two or more tables based on a related
	column between them. JOINs help retrieve meaningful data spread across multiple
	tables by linking them through common keys.
	
	Key Points:
	- JOIN connects tables using a matching column (usually a primary key and foreign key).
	- It allows you to fetch combined data from multiple tables in a single query.
	- Different types of JOINs control how unmatched rows are handled.
	- JOINs are essential for relational databases where data is stored in separate tables.
	
	Types of JOINs:
	1. INNER JOIN
	   → Returns only the matching rows from both tables.
	   → Unmatched rows are removed.
	
	2. LEFT JOIN (LEFT OUTER JOIN)
	   → Returns all rows from the left table and matching rows from the right table.
	   → Unmatched right-side rows appear as NULL.
	
	3. RIGHT JOIN (RIGHT OUTER JOIN)
	   → Returns all rows from the right table and matching rows from the left table.
	   → Unmatched left-side rows appear as NULL.
	
	4. FULL JOIN (FULL OUTER JOIN)
	   → Returns all rows from both tables.
	   → Unmatched rows from either side appear as NULL.
	
	5. CROSS JOIN
	   → Returns the Cartesian product (every combination of rows).
	   → No condition required.
	
	Difference (super short):
	INNER JOIN → only matching rows  
	LEFT JOIN  → all left rows + matching right rows  
	RIGHT JOIN → all right rows + matching left rows  
	FULL JOIN  → all rows from both tables  
	CROSS JOIN → all combinations (no condition)
	
	Syntax:
	SELECT columns
	FROM table1
	JOIN table2
	ON table1.common_column = table2.common_column;
	
	Example:
	Fetch employee names with their department names:
	SELECT e.full_name, d.dept_name
	FROM employees e
	INNER JOIN departments d
	ON e.dept_id = d.dept_id;
	
	Notes:
	- Always use ON to define the matching condition.
	- Table aliases (e, d) make queries cleaner and easier to read.
	- JOINs help combine normalized data stored across multiple tables.


	Difinition (Inshort):
	INNER JOIN → only matching rows  
	LEFT JOIN  → all left rows + matching right  
	RIGHT JOIN → all right rows + matching left  
	FULL JOIN  → all rows from both tables  
	CROSS JOIN → all combinations (no condition)

	Syntax:

	SELECT columns
	FROM table1
	INNER JOIN table2
	ON table1.common_column = table2.common_column;
	

	SELECT columns
	FROM table1
	LEFT JOIN table2
	ON table1.common_column = table2.common_column;


	SELECT columns
	FROM table1
	RIGHT JOIN table2
	ON table1.common_column = table2.common_column;

	
	SELECT columns
	FROM table1
	FULL JOIN table2
	ON table1.common_column = table2.common_column;


	SELECT columns
	FROM table1
	CROSS JOIN table2;

*/
