-- ALTER DATABASE
ALTER DATABASE ecomcoredb
RENAME TO procomcoredb; 


ALTER DATABASE appmasterdb
RENAME TO masterapp;
-- Rename the database



-- ALTER TABLE
ALTER TABLE users
ADD xyz VARCHAR(40);
-- insert new column


ALTER TABLE users
DROP COLUMN xyz;
-- drop the column from table 


ALTER TABLE users 
RENAME COLUMN department TO depart;
-- rename the column permanetly


ALTER TABLE users
RENAME TO new_users;
-- rename the entire table name permanently



ALTER TABLE new_users
ALTER COLUMN full_name TYPE VARCHAR(300); 
-- increases the size of full_name from VARCHAR(200) to VARCHAR(300)



ALTER TABLE new_users
ALTER COLUMN emp_salary TYPE NUMERIC(10, 3);
-- try to change the datatype according to data
-- changes emp_salary datatype to NUMERIC with 10 digits and 3 decimal places



ALTER TABLE new_users
ADD CONSTRAINT slry CHECK (emp_salary < 1000000000); -- if i try to insert salary more then condition got an error 
-- adds a CHECK constraint that restricts emp_salary to values below 1,000,000


ALTER TABLE new_users
DROP CONSTRAINT slry;
-- removes the CHECK constraint named slry from the table


ALTER TABLE new_users
ALTER COLUMN depart SET DEFAULT 'bydefaut'
 -- Sets a default value for a column.'


ALTER TABLE new_users
ALTER COLUMN depart  DROP DEFAULT;
-- Removes the default value for a column.



-- CREATE OR REPLACED VIEW
-- Modify the existing view with a new SELECT query
CREATE OR REPLACE VIEW vname AS
SELECT full_name
FROM new_users
WHERE emp_salary < 20000;
-- This updates the view's logic. If data looks same, it means the base table
-- still returns the same rows, not an issue with the view.


-- CREATE OR REPLACED VIEW
-- Check the view's stored SELECT query (its internal definition)
SELECT definition
FROM pg_views
WHERE viewname = 'vname';
-- This shows the exact SELECT statement inside the view.
-- Helps confirm whether the view was updated correctly.


-- CREATE OR REPLACED VIEW
-- Access the updated view data
SELECT *
FROM vname;
-- This displays the rows returned by the modified view.
-- If results look unchanged, the underlying SStable data did not change.



/*
	Definition :
	ALTER is a DDL command used to modify the structure (schema) of a database object. 
	It can change databases, tables, columns, constraints, indexes, views, schemas, 
	users, procedures, and functions. 	
	ALTER only changes design — never the actual data stored inside rows.
	
	Basic Difference :
    UPDATE = changes the data stored inside the table.
	ALTER  = design change;
	UPDATE = value change.
	

	
	ALTER DATABASE :
    Modifies database-level settings.
    Changes collation, file size, file growth, options.
    Does NOT change tables or data.
    DDL command → database-level structural change.

    
	Important/syntax:
	 - You cannot rename or modify a database while it is in use.
	 - If any session is connected to the database, ALTER DATABASE will fail.
	 - All active sessions/connections must be terminated before renaming or changing settings.
	 - You cannot rename a database while you are inside it. First connect to another database.

		ALTER DATABASE database_name
        RENAME TO new_database_name;

        -- ALTER DATABASE database_name
        -- COLLATE new_collation; -- it does not work in PostgreSQL/pgAdmin, mostly used in SQL Server or MySQL
                                  -- This command is used to change the database collation, but PostgreSQL does not support it.
                                  -- Collation means the language‑based rules for sorting and comparing text in a database.

        ALTER DATABASE database_name
        SET READ_ONLY;  -- This command is used to make the database read‑only, but it does not work in PostgreSQL/pgAdmin.
                        -- PostgreSQL does not support setting a database to read‑only using ALTER DATABASE.




    ALTER TABLE :
    Changes the structure (schema) of a table.
    Adds, drops, renames columns.
    Changes datatype, NULL/NOT NULL, DEFAULT.
    Adds or removes constraints: PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK, NOT NULL, DEFAULT.
    Can rename the entire table.
    DDL command → structural change at table level.
    Does NOT modify existing row values.


    Important/syntax:
	   ALTER TABLE table_name
	   ADD column_name datatype; 
	   -- Adds a new column to the table.
	
	   ALTER TABLE table_name
	   DROP COLUMN column_name;
	   -- Removes a column from the table.
	
	
	   ALTER TABLE table_name
	   MODIFY column_name new_datatype;        -- Supported in MySQL
	   -- Changes datatype in MySQL.

	
	   ALTER TABLE table_name
	   ALTER COLUMN column_name new_datatype;  -- Supported in SQL Server
	   -- Changes datatype in SQL Server.
	   
	
	   ALTER TABLE table_name
	   RENAME COLUMN old_name TO new_name;
	   -- Renames a column.

	
	   ALTER TABLE old_table_name
	   RENAME TO new_table_name;
	   -- Renames the entire table.

	
	   ALTER TABLE table_name
	   ADD CONSTRAINT constraint_name constraint_type (column_name);
	   -- Adds a constraint (PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK).
	
	   ALTER TABLE table_name
	   DROP CONSTRAINT constraint_name;
	   -- Removes a constraint.
	
	   ALTER TABLE table_name
	   ALTER COLUMN column_name SET DEFAULT value;
	   -- Sets a default value for a column.
	   
	
	   ALTER TABLE table_name
	   ALTER COLUMN column_name DROP DEFAULT;
	   -- Removes the default value.




	ALTER VIEW :
    Used to modify or recreate an existing view.
    Updates the SELECT query of the view.
    Does NOT store data; only changes the definition.
    DDL command → changes the structure of the view.

    Important / Syntax:
	  - The view must already exist.
      - Column datatypes cannot be changed through a view.
      - Underlying base tables must exist and be valid.
      
	  MySQL uses:
            ALTER VIEW view_name AS
            SELECT column_list
            FROM table_name
            WHERE condition;

      PostgreSQL uses:
            CREATE OR REPLACE VIEW view_name AS
            SELECT column_list
            FROM table_name
            WHERE condition;




	ALTER INDEX :
    Used to rebuild, reorganize, or rename an index.
    Improves query performance and reduces fragmentation.
    Does NOT change table structure or table data.
    DDL command → index-level structural change.

    Important / Syntax:
      - REBUILD recreates the index to improve performance.
      - RENAME changes the index name.
      - Supported in PostgreSQL, MySQL, SQL Server (syntax varies slightly).

      -- Rebuild an index
      ALTER INDEX index_name
      REBUILD;

      -- Rename an index
      ALTER INDEX old_index_name
      RENAME TO new_index_name;




	ALTER SCHEMA :
    Used to move objects (tables, views, functions) from one schema to another.
    Changes the object's logical location/ownership.
    Does NOT modify data or table design.
    DDL command → schema-level structural change.

    Important / Syntax:
      - TRANSFER moves an object from old_schema to new_schema.
      - The object must already exist.
      - User must have required permissions.

      -- Move an object to another schema
      ALTER SCHEMA new_schema
      TRANSFER old_schema.object_name;




	ALTER USER / ALTER ROLE :
    Used to modify user or role properties.
    Updates login credentials, password, permissions, and attributes.
    Does NOT affect tables or stored data.
    DDL command → security-level change.

    Important / Syntax:
      - Used to change password or authentication settings.
      - User or role must already exist.
      - Requires proper permissions.

      -- Change user password
      ALTER USER user_name
      WITH PASSWORD 'new_password';

      -- Change role password
      ALTER ROLE role_name
      WITH PASSWORD 'new_password';





    ALTER PROCEDURE / FUNCTION :
    Used to modify the definition of a stored procedure or function.
    Updates logic, parameters, or internal code.
    Does NOT change table structure or stored data.
    DDL command → program-level structural change.

    Important/syntax:
      - Replaces the existing procedure/function body.
      - Object must already exist.
      - Used to update business logic.

		-- Procedure:
        ALTER PROCEDURE procedure_name
        AS
        BEGIN
            -- updated logic
        END;
        -- Modifies the stored procedure.


        -- Function:
        ALTER FUNCTION function_name
        RETURNS datatype
        AS
        BEGIN
            -- updated logic
        END;
        -- Modifies the stored function.



    UPDATE (for comparison):
       - Changes data stored inside rows.
       - Modifies values of existing columns only.
       - Cannot add/remove/rename columns.
       - Cannot change datatype or constraints.
       - DML command → data-level change.
       - Affects only selected rows, not design.


    One-line memory rule:
       ALTER = structure change (database, table, view, index, schema).
       UPDATE = data change (row values only).
*/

