-- This is an example of VIEW commands (create, select, modify, drop, update)

-- Create a view
CREATE VIEW vname AS
SELECT full_name, email, emp_salary
FROM new_users
WHERE emp_salary > 13000;

-- Select from the view
SELECT *
FROM vname;

-- Modify the view (PostgreSQL)
CREATE OR REPLACE VIEW vname AS
SELECT full_name, email, emp_salary, project_name
FROM new_users
WHERE emp_salary > 12000;

-- Drop the view
DROP VIEW vname;

-- Select again (view no longer exists)
SELECT *
FROM vname;

-- Update through the view (works only if view is updatable)
UPDATE vname 
SET full_name = 'wizard'
WHERE email = 'xyz@gmail.com';


/*
    ---------------------------------------------------------------------------
    Definition of VIEW
    ---------------------------------------------------------------------------

    A VIEW in SQL is a virtual table created from a SELECT query.
    It does NOT store any data physically in the database (except materialized
    views). It only stores the query definition.

    Whenever we SELECT from a view, SQL re-runs the underlying SELECT statement
    and shows the latest data from the original table(s).

    Views are commonly used in real projects to:
      - Show selected or filtered data to managers or team leaders.
      - Prepare clean output for printing hard copies or reports.
      - Hide sensitive columns (like salary, password).
      - Simplify complex queries and make them reusable.
      - Provide a stable interface even if the base table structure changes.

    In short:
      VIEW = Virtual data for display/reporting purposes,
             not stored permanently in the database.


    ---------------------------------------------------------------------------
    Notes
    ---------------------------------------------------------------------------

    1. Views do NOT store data; they store only the SELECT query.
    2. Views improve security by restricting access to specific columns.
    3. Views simplify complex joins and calculations.
    4. ORDER BY is NOT allowed inside a view definition in most SQL engines.
       Use ORDER BY outside the view:
           SELECT * FROM view_name ORDER BY column;
    5. Updatable Views:
       A view is updatable only if:
         - It selects from ONE table
         - No JOIN
         - No GROUP BY, HAVING, DISTINCT, UNION
         - No aggregate functions (SUM, COUNT, AVG, etc.)


    ---------------------------------------------------------------------------
    Syntax
    ---------------------------------------------------------------------------

    -- Create a simple view
    CREATE VIEW view_name AS
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition;

    -- Select data from a view
    SELECT *
    FROM view_name;

    -- Modify a view (PostgreSQL)
    CREATE OR REPLACE VIEW view_name AS
    SELECT ...;

    -- Drop a view
    DROP VIEW view_name;

    -- Update through a view (only if the view is updatable)
    UPDATE view_name
    SET column = value
    WHERE condition;


    ---------------------------------------------------------------------------
    Examples
    ---------------------------------------------------------------------------

    -- Simple view
    CREATE VIEW employee_basic AS
    SELECT emp_id, emp_name, department
    FROM users;

    -- View with condition
    CREATE VIEW it_department AS
    SELECT emp_id, emp_name, salary
    FROM users
    WHERE department = 'Information Technology';

    -- View with JOIN (not updatable)
    CREATE VIEW employee_details AS
    SELECT u.emp_id, u.emp_name, d.dept_name, d.location
    FROM users u
    JOIN departments d
      ON u.department_id = d.dept_id;


    ---------------------------------------------------------------------------
    Materialized Views (PostgreSQL)
    ---------------------------------------------------------------------------

    Materialized views store data physically and must be refreshed manually.

    CREATE MATERIALIZED VIEW mv_users AS
    SELECT *
    FROM users;

    -- Refresh materialized view
    REFRESH MATERIALIZED VIEW mv_users;


    ---------------------------------------------------------------------------
    Practical Use Case (Real Company Scenario)
    ---------------------------------------------------------------------------

    Managers often request filtered data for review or printing hard copies.
    Instead of giving access to full tables, we create a VIEW that shows only
    the required columns. This keeps the database secure and the output clean.

    Example:
      A manager wants a list of employees earning above 20,000 for monthly
      report printing. We create a view and simply SELECT from it whenever
      needed. No need to rewrite the query again and again.

    VIEW = Safe, clean, filtered, printable data.
*/
