CREATE DATABASE "NEW DATABASE";           -- try to create the database
DROP DATABASE "NEW DATABASE";             -- remove the databse parmently 
DROP DATABASE IF EXISTS "NEW DATABASE";   -- remove the database parmently if exiist(to avoid error). 



CREATE TABLE tablename(
		column1 SERIAL PRIMARY KEY,
		column2 VARCHAR(20),
		column3 INT UNIQUE DEFAULT 0
);  					 				   -- create the basic table
SELECT * FROM tablename;   				   -- try to check table is created or not ?


DROP TABLE tablename;                      -- remove table parmentaly from database
DROP TABLE IF EXISTS tablename;            -- remove table parmentaly from database if exist.
DROP TABLE tablename CASCADE;			   -- Delete the table and everything connected to it.
DROP TABLE tablename RESTRICT;			   -- Prevent deletion if anything is connected to it


SELECT * FROM products;
INSERT INTO Products("Product Name", price, "Stock Quantity", Categorary)
		VALUES('Hair care',  199.25, 55, 'Oilcare');



ALTER TABLE Products              -- modifies the structure of the existing table
DROP "Stock Quantity";            -- permanently removes the column; shows error if it doesn't exist

ALTER TABLE Products              -- ALTER means changing the table’s structure
DROP COLUMN price;                -- permanently removes the column; shows error if it doesn't exist

ALTER TABLE Products			  -- ALTER modifies the properties of existing database objects
DROP COLUMN IF EXISTS xyz;        -- removes the column only if it exists (avoids error)

SELECT "Stock Quanity" FROM Products; -- error are shown column doesn't exist removid by Drop


/*

DROP COMMAND : -

The DROP command is a SQL DDL statement that permanently removes the definition and existence of a 
database object (table, database, index, view, etc.) along with all its associated data and metadata 
from the database system.

Impact : -
Removes the entire structure, not just data
Affects tables, columns, databases, indexes, views, etc.

Backup :-BASE
Changes cannot be rolled back in many database systems
Once executed, the object is permanently deleted

Transaction Behavior
Usually commits any pending transactions
Cannot be rolled back in most RDBMS (except some with specific settings)

Permissions :-
Needs appropriate permissions to execute
Typically requires DBA or object owner privileges

Various Syntax Formats of DROP Command :-

Syntax : -
DROP DATABASE databasename;
DROP DATABASE IF EXISTS databasename;


Syntax -
DROP TABLE tablename;
DROP TABLE IF EXISTS tablename;
DROP TABLE tablename CASCADE;
DROP TABLE IF EXIST tablename RESTRICT;


Syntax : -
ALTER TABLE tablename DROP columnname
ALTER TABLE tablename DROP COLUMN columnname
ALTER TABLE tablename DROP COLUMN IF EXISTS columnname.
ALTER TABLE tablename DROP COLUMN columnname1, DROP COLUMN columnname2;


Syntax : -
ALTER TABLE table_name DROP CONSTRAINT constraint_name;
ALTER TABLE table_name DROP PRIMARY KEY;
ALTER TABLE table_name DROP FOREIGN KEY fk_name;


Syntax : -
DROP INDEX index_name;
DROP INDEX IF EXISTS index_name;
DROP INDEX index_name ON table_name;


Syntax : -
DROP VIEW view_name;
DROP VIEW IF EXISTS view_name;


Syntax : -
DROP SEQUENCE sequence_name;
DROP SEQUENCE IF EXISTS sequence_name;


Syntax : -
DROP FUNCTION function_name;
DROP PROCEDURE procedure_name;
DROP FUNCTION IF EXISTS function_name;


Syntax : -
DROP TRIGGER trigger_name;
DROP TRIGGER IF EXISTS trigger_name;


Syntax : -
DROP SCHEMA schema_name;
DROP SCHEMA IF EXISTS schema_name CASCADE;


Syntax : -
DROP USER user_name;
DROP ROLE role_name;
*/


