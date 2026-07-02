-- check the data
SELECT *
FROM company_employees;

-- create index on single column (improves search speed on salary_amount)
CREATE INDEX salry_idx
ON company_employees(salary_amount);

-- another index on same column (not recommended, just for demo)
CREATE INDEX walry_idx
ON company_employees(salary_amount);

-- index on project_name (helps in faster filtering by project)
CREATE INDEX email_address_idx
ON company_employees(project_name);

-- multiple column index (useful when queries filter using both columns together)
CREATE INDEX idx_orders_customerid
ON company_employees (email_address, department_name);

-- create unique index (ensures no duplicate values exist in employee_id)
CREATE UNIQUE INDEX emp_idx
ON company_employees(employee_id);

-- Drop the index
-- MySQL syntax:
-- DROP INDEX walry_idx ON company_employees;

-- PostgreSQL syntax:
DROP INDEX walry_idx;

-- index improves speed of fetching data
-- usually not noticeable on small data, but clearly effective on large datasets
SELECT *
FROM company_employees;


/*
    Definition:
    CREATE INDEX is used to improve the speed of data retrieval
    by creating an index on one or more columns.

    Purpose:
        - Speeds up SELECT queries
        - Optimizes WHERE, JOIN, ORDER BY, GROUP BY
        - Helps database find rows faster without scanning entire table

    Common types:
        - NORMAL INDEX
        - UNIQUE INDEX
        - COMPOSITE INDEX (multiple columns)
        - FULLTEXT INDEX (MySQL only)
        - CLUSTERED / NON-CLUSTERED (SQL Server)

    IMPORTANT:
        - Index improves read performance
        - Index slows down write operations (INSERT, UPDATE, DELETE)
        - Index consumes extra storage
        - Avoid indexing columns with very low uniqueness (gender, status)

    Basic CREATE INDEX syntax:
        Speeds up searches on one specific column.
        CREATE INDEX index_name
        ON table_name (column1);

    Creating a UNIQUE index:
        Ensures no duplicate values exist in the column.
        CREATE UNIQUE INDEX index_name
        ON table_name (column_name);

    Creating a composite index:
        Useful when queries filter using multiple columns together.
        CREATE INDEX index_name
        ON table_name (column1, column2);

    DROP INDEX syntax:
        Removes an existing index.
        MySQL: DROP INDEX index_name ON table_name;
        PostgreSQL: DROP INDEX index_name;

    Effects of creating an index:
        - Faster SELECT
        - Faster sorting and joining
        - Slower INSERT/UPDATE/DELETE
        - Extra disk usage

    Index vs Primary Key:
        - PRIMARY KEY automatically creates a UNIQUE INDEX
        - INDEX is optional and used only for performance

    Notes:
        -> CREATE INDEX improves query performance
        -> Effect: Speeds up data retrieval
        -> WHERE clause cannot be used with CREATE INDEX
        -> Index creation can be rolled back inside a transaction
        -> Index creation does not trigger table events
*/
