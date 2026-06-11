-- display the data that avaliable before
SELECT * FROM hello;

-- inserting the data 
INSERT INTO hello 
	   VALUES (10, 'oyz', 'abc', 002, 121, 102),
	          (10, 'ayn', 'abc', 003, 121, 103),
			  (10, 'myz', 'abc', 004, 121, 104),
			  (10, 'xcl', 'abc', 005, 121, 105),
			  (10, 'kyz', 'abc', 006, 121, 106),
			  (10, 'xej', 'abc', 007, 121, 107),
			  (10, 'ifz', 'abc', 008, 121, 108),
			  (10, 'gyh', 'abc', 009, 121, 109);
-- access the whole data
SELECT * FROM hello;


-- for single row
DELETE FROM hello
WHERE "Column4" = 1;  -- delete the row if column4 is 1.


-- DROP COMMAND WE USE TO REMOVE 
-- for single column
ALTER TABLE hello
DROP COLUMN "Column1"; -- column1 is remove from hello


-- for remove column from table
ALTER TABLE hello
DROP COLUMN "Column3", -- column3 is remove from hello
DROP COLUMN "Column2";


-- for remove the table from database If Exists
DROP TABLE IF EXISTS hello; 

-- check the table is remove or not 
SELECT * FROM hello;  

-- for remove the database from SQL.
DROP DATABASE IF EXISTS databasename;


/*


DELETE COMMAND : -
DELETE command in SQL is used to remove one or more existing records (rows) from a table in a 
database. It's a critical and powerful command that permanently removes data, so it must be used 
with caution.



DROP COMMAND :- 
DROP command is a Data Definition Language (DDL) statement in SQL that is used to permanently remove 
entire database objects from the database system. It completely eliminates the object's structure, 
data, and associated metadata.


When we use DROP and DELETE ? 
If we want to clear data but keep the table, then use DELETE.
If we want to remove the table entirely, then use DROP.

syntax : -
DELETE FROM tableName 
WHERE condition;

ALTER TABLE tablename 
DROP COLUMN column_name;

DROP TABLE IF EXIST tablename;
DROP DATABASE IF EXIST databasename;

*/
---------------------------------------------------------
-- FEATURES			    DELETE	                DROP		
---------------------------------------------------------
-- Table remains 	   | Yes             |	  | No     |	
-- WHERE clause		   | Yes             |	  | No     |     
-- Rollback possible   | often           |	  | Rarely |
-- Triggers activated  | Yes(if defined) |    | No     |
----------------------------------------------------------


