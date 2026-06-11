
CREATE TABLE tablename(
	column1 INT,
	column2 VARCHAR(10),
	column3 SERIAL
); 

INSERT INTO tablename VALUES
(10, 'Aditya'),
(50, 'Wizard'),
(80, 'Ramesh');
SELECT * FROM tablename;




-- change the name of existing column
ALTER TABLE tablename
RENAME column1 TO amount;

ALTER TABLE tablename
RENAME COLUMN column2 TO "Full Name";


-- add the new name of column 
ALTER TABLE tablename
ADD COLUMN "Date of Birth" DATE;


-- remove column that exist in tablename  
ALTER TABLE tablename
DROP COLUMN IF EXISTS column3;


-- modify the column data type 
ALTER TABLE tablename
ALTER COLUMN column2 TYPE VARCHAR(50);


-- adding constraints 
ALTER TABLE tablename
ADD CONSTRAINT amount PRIMARY KEY (amount);


ALTER TABLE tablename
ADD CONSTRAINT column2 UNIQUE (column2);

-- ALTER TABLE tablename
-- ADD CONSTRAINT amount CHECK (amount > 0);


INSERT INTO tablename
	VALUES(16, 'xpz', '03/01/2005');
SELECT * FROM tablename;


-- remove the constraint
ALTER TABLE tablename
DROP CONSTRAINT amount;


-- RENAME the table 
ALTER TABLE tablename
RENAME TO "Student Table";

SELECT * FROM "Student Table"; -- name of table is changed 
-- SELECT * FROM tablename;       -- name of table is changed so error are show not exist 



-- delete the whole row of table like delete
-- but works much faster then delete command
TRUNCATE TABLE "Student Table";

-- to restart count identily from 1 
-- (use in the case of serial datatype suto increment)
TRUNCATE TABLE "Student Table" RESTART IDENTITY;

/*
ALTER command in SQL is a fundamental Data Definition Language (DDL) command used to modify the 
structure of an existing database object

The meaning of ALTER is change or modify the structure So, ALTER TABLE means we are going to modify 
the table using some other caluse like DROP, RENAME, ADD etc.

syntax :- 
ALTER TABLE tableName
RENAME TO newtableName;


syntax : -
ALTER TABLE tableName
RENAME COLUMN colname TO colname2;


syntax : -
ALTER TABLE tableName
ADD COLUMN colname DATATYPE


syntax : -
ALTER TABLE tableName
DROP COLUMN IF EXIST colname;


syntax : -
ALTER TABLE tableName
ALTER COLUMN colname TYPE DATATYPE(size);


syntax : -
ALTER TABLE tablename
ADD CONSTRAINT colname PRIMARY KEY (colname);


syntax : -
ALTER TABLE tablename
DROP CONSTRAINT colname;


Extra : -
-- ALTER TABLE Employees
-- ADD CONSTRAINT chk_salary CHECK (salary > 0);



NOTE : - (both are not same)

-- NOT NULL (column property)
ALTER TABLE tablename 
ALTER COLUMN columnname SET NOT NULL;


-- PRIMARY KEY (table constraint)  
ALTER TABLE tablename 
ADD PRIMARY KEY (columnname);



________________________________________
TRUNCATE : -

TRUNCATE is a Data Definition Language (DDL) command used to remove all rows from a table quickly 
and efficiently.

important keys : -
✅ Removes ALL records from a table
✅ Much faster than DELETE
✅ Resets auto-increment counters (ID numbers start over from 1)
✅ Cannot be used with WHERE clause

❌ Cannot delete specific rows (unlike DELETE)
❌ Cannot be rolled back in many databases
❌ Doesn't log individual row deletions

TRUNCATE = Complete reset (removes data + resets counter to start)
DELETE = Only removes data (keeps the counter where it was)
DROP  = Proper remove data from database not rolled back

syntax : -
TRUNCATE TABLE tableName;

syntax : -
TRUNCATE TABLE table_name RESTART IDENTITY

NOTE :-
We use TRUNCATE TABLE table_name RESTART IDENTITY to reset the auto-increment counter back to 1 after
deleting all rows.

*/

