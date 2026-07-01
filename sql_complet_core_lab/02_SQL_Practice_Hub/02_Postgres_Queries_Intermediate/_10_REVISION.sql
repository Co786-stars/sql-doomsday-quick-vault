---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

-- LIMIT / FETCH : used to restrict number of rows returned
SELECT *
FROM users
ORDER BY emp_id ASC
LIMIT 2;

SELECT *
FROM appuser
ORDER BY user_id DESC
FETCH FIRST 2 ROW ONLY;


-- MIN / MAX : returns smallest and largest value from a column
SELECT MAX(employee_id) AS maximum,
       MIN(employee_id) AS minimum
FROM company_employees;


-- COUNT : counts total number of rows in a table or result set
SELECT COUNT(*)
FROM company_employees;


-- SUM : adds all numeric values in a column
SELECT SUM(emp_id)
FROM users;


-- AVG : calculates average value of a numeric column
SELECT ROUND(AVG(emp_salary), 2)
FROM users;


-- LIKE : used for pattern matching (%, _)
SELECT *
FROM company_employees
WHERE full_name LIKE 'A%';   -- names starting with A


-- IN : checks if a column matches any value in a given list
SELECT *
FROM company_employees
WHERE project_name IN ('WebWorks', 'DataVision', 'AI Labs')
ORDER BY project_name;


-- BETWEEN : selects values within a specific range
SELECT *
FROM company_employees
WHERE salary_amount BETWEEN 40000 AND 60000;


-- AS (Alias) : gives temporary readable names to columns
SELECT full_name       AS emp_name,
       email_address   AS emp_email,
       department_name AS emp_department
FROM company_employees;


---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

-- UNION : combines results and removes duplicates
SELECT full_name AS full_name
FROM demo_users
UNION
SELECT emp_name AS full_name
FROM demo_employees;


-- UNION ALL : combines results and keeps duplicates
SELECT full_name AS full_name
FROM demo_users
UNION ALL
SELECT emp_name AS full_name
FROM demo_employees;


-- INTERSECT : returns only names present in BOTH tables
SELECT full_name AS full_name
FROM demo_users
INTERSECT
SELECT emp_name AS full_name
FROM demo_employees;


-- EXCEPT : returns names from demo_users NOT present in demo_employees
SELECT full_name AS full_name
FROM demo_users
EXCEPT
SELECT emp_name AS full_name
FROM demo_employees; -- (return the result of first table that not present in second)


---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

CREATE TABLE demo_users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(30),
    salary INT,
    dept VARCHAR(20)
);

INSERT INTO demo_users (
		user_id,
		full_name, 
		salary, 
		dept
) 
VALUES
 	(1, 'Amit Sharma',  45000, 'IT'),
	(2, 'Neha Verma', 	52000, 'HR'),
	(3, 'Arjun Patel',  38000, 'Finance'),
	(4, 'Riya Singh', 	60000, 'IT'),
	(5, 'Anil Kumar', 	47000, 'Marketing'),
	(6, 'Aman Gupta', 	50000, 'IT'),
	(7, 'Rohit Sinha', 	55000, 'Finance');


CREATE TABLE demo_employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    project VARCHAR(20),
    salary INT
);

INSERT INTO demo_employees (
	emp_id, 
	emp_name, 
	project, 
	salary
) 
VALUES 
	(101, 'Aman Gupta',   'WebWorks', 	55000),
	(102, 'Sneha Rao',    'DataVision', 48000),
	(103, 'Karan Mehta',  'AI Labs', 	62000),
	(104, 'Ananya Joshi', 'WebWorks', 	43000),
	(105, 'Rohit Sinha',  'AI Labs', 	51000),
	(106, 'Amit Sharma',  'AI Labs', 	58000),
	(107, 'Neha Verma',   'WebWorks', 	49000);

---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
