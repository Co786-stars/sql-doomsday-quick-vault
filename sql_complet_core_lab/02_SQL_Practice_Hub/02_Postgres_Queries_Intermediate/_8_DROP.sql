-- Drop a table permanently
DROP TABLE product_info;

-- Drop a table permanently (safe version, prevents error if table does not exist)
DROP TABLE 
IF EXISTS wizard;

-- Drop a database permanently (without IF EXISTS)
DROP DATABASE analyticswarehouse;

-- Drop a database permanently (safe version, prevents error if database does not exist)
DROP DATABASE 
IF EXISTS wizard;


/*
    Definition:
    The DROP command is used to permanently remove an entire database object.
    Common objects that can be dropped:
        - TABLE
        - DATABASE
        - VIEW
        - INDEX
        - SCHEMA
        - FUNCTION / PROCEDURE

    DROP is irreversible.
    Once a table or database is dropped, all data and structure are permanently deleted.
    There is no "undo" unless backups exist.

    IMPORTANT:
    A database cannot be dropped while it is in use.
    All active sessions must be disconnected before dropping a database.
	
	WHERE (condition) clause or keyword is necessary to use with DELETE command 
    if we not use condition then all records are delete


    DROP vs DELETE vs TRUNCATE:
        - DELETE   → removes rows but keeps the table structure.
        - TRUNCATE → removes all rows but keeps the table structure (faster than DELETE).
        - DROP     → removes the entire table or database permanently.

    Basic DROP syntax:
        DROP TABLE table_name;
        DROP DATABASE database_name;

    DROP syntax with IF EXISTS (recommended):
        Prevents errors if the object does not exist:
            DROP TABLE IF EXISTS users;
            DROP DATABASE IF EXISTS company_db;

    Dropping a table also removes:
        - Constraints (PRIMARY KEY, FOREIGN KEY)
        - Indexes
        - Triggers
        - Permissions related to that table


	Note :-
 	 -> DROP command is use to parmently delete the table or Database
	 -> Effect: Completely removes the table and its data from the database.
	 -> Can Use WHERE Clause: ❌ No — it removes the whole object.
 	 -> Rollback: Not always possible — often irreversible.
	 -> Triggers: Not fired — the object is gone

*/


