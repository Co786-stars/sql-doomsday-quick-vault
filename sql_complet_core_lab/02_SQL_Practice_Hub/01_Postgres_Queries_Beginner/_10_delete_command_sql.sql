CREATE TABLE employee(
	employee_id SERIAL NOT NULL,
	name VARCHAR(20) NOT NULL,
	department VARCHAR(20),
	salary NUMERIC(7, 2)
);
SELECT * FROM employee;	 			      -- check the table column is exist or not ?

INSERT INTO employee 
VALUES(101,  'Alice',   'Sales', 50000),
	  (102,  'Bob',	    'IT',    60000),
	  (103,  'Charlie', 'Sales', 55000),
	  (104,  'David',	'HR',	 45000),
	  (105,  'Eve',	    'IT',	 70000),   -- Creating a table to perform the DELETE Command
	  (102,  'Bob',	    'IT',    60000),
	  (103,  'Charlie', 'Sales', 55000),
	  (104,  'David',	'HR',	 45000);

---------------------------------DELETE---------------------------------------------------------

DELETE FROM employee                       
WHERE employee_id = 105;     -- delete the specific/single row where value of employee_id is 105


DELETE FROM employee
WHERE department = 'Sales';  -- delete the row where deaprtment values is sales.



DELETE FROM employee         -- delete those row where HR salary is less the 45,000
WHERE department = 'HR' AND salary < 45000; 

DELETE FROM employee;        -- delete the entire row/data  of table from database 


-- EXTRA PRACTICE FOR DELETE COMMAND SYNTAX 
Syntax : -
DELETE FROM Employees 
WHERE employee_id NOT IN (
    SELECT MIN(employee_id) 
    FROM Employees 
    GROUP BY name, department
);



Syntax : -
DELETE FROM Employees 
WHERE department IN (
    SELECT department_name 
    FROM Departments 
    WHERE location = 'Closed'

/*

DELETE COMMAND : -
A SQL command that removes existing rows from a database table. It operates within transactions, 
allowing changes to be reversed with ROLLBACK before finalizing with COMMIT. Requires a WHERE 
clause to target specific rows; without WHERE, it deletes all table data.

Syntax : -
DELETE FROM tableName 
WHERE condition;

Syntax : -
DELETE FROM tableName
WHERE condition1 AND condition2;

Syntax : -
BEGIN TRANSACTION;                       -- Start transaction
DELETE FROM tableName WHERE condition;   -- Temporary change
ROLLBACK;                                -- Undo the change

Syntax : -
DELETE FROM Employees 
WHERE employee_id NOT IN (
    SELECT MIN(employee_id) 
    FROM Employees 
    GROUP BY name, department
);


Syntax : -
DELETE FROM Employees 
WHERE department IN (
    SELECT department_name 
    FROM Departments 
    WHERE location = 'Closed'
);

*/






/*-----------------------------------------ROLLBACK________________________________________________
BEGIN TRANSACTION;

-- creating the table
CREATE TABLE "School Student"(
	"Student Name" VARCHAR(40) NOT NULL,
	"Class Section" VARCHAR(20),
	"Mobile Number" NUMERIC(10) UNIQUE,
	"City Name" VARCHAR(10)
);
SELECT * FROM "School Student";

INSERT INTO "School Student" ("Student Name", "Class Section", "Mobile Number", "City Name")
	VALUES('Wizard', '7C', 9796258551, 'Patna'),
		  ('Lmzaud', '8B', 9496358522, 'Gaya'),
		  ('Hbzatd', '1A', 9596259535, 'Delhi'),
		  ('PIzand', '2D', 9996258521, 'Mumbai'),
		  ('QIzaed', '1D', 9494585272, 'Patna');

-- COMMIT;
ROLLBACK;


Note : - 
What is the use of BEGIN TRANSACTION and ROLLBACK; ?

 ROLLBACK: -
 command that completely cancels and reverses all changes made to the database during the current 
 transaction, restoring all data to exactly how it was before the transaction started.

 In SQL If auto-commit is OFF, ROLLBACK can undo DELETE operations made between BEGIN and ROLLBACK. 
 But if auto-commit is ON, DELETE changes are saved instantly and cannot be undone — the data is 
 deleted permanently.
 
 Make sure auto-commit is OFF in SQL tool, the Yes, rollback restores or undo the data 
 that written between begin and rollback
 
 How to off Auto commited in SQL: -
 file -> Preference - > Query tool - > Options -> auto-commit(off these).
 	
COMMIT	SAVE the recent changes permanently.
*/




/*
-- UNDO the recent changes between BEGAIN and ROLLBACK.
-- try to check teh column is deleted or not 
-- remove the row accorging to condition temporary
-- check deleted data in outside the ROLLBACK. 

*/

