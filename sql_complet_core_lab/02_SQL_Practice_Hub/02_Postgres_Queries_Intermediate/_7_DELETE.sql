-- delete usin single condition
DELETE 
FROM users 
WHERE emp_id =2
RETURNING *;


-- delete using multiple condition
DELETE 
FROM users
WHERE 	emp_id = 1
	AND department = 'Information Technology'
RETURNING *;
-- ORDER BY cannot appear inside a DELETE statement in PostgreSQL.


-- check the deleted column
SELECT *
FROM users
WHERE department ='Information Technology'
ORDER BY emp_id;



-- CTE (Common Table Expression) format
WITH deleted AS (
	DELETE FROM users
	WHERE emp_id = 1
	  AND department = 'information technology'
	RETURNING *
)
SELECT *
FROM deleted
ORDER BY emp_id ASC;


/*
  Definition:-

    The DELETE command is used to remove existing records (rows) from a table.
    It deletes only the data, not the table structure. DELETE affects only those
    rows that match the condition provided in the WHERE clause.

    If the WHERE clause is not used, then ALL rows in the table will be deleted,
    which is risky and should be avoided unless intentionally clearing the table.

    DELETE works row-by-row and supports conditions, expressions, joins (in some
    SQL engines), and transactions. In PostgreSQL, the RETURNING clause can be
    used to display the deleted rows immediately.

    ---------------------------------------------------------------------------
    Syntax:
    ---------------------------------------------------------------------------

    -- Delete specific rows
    DELETE FROM table_name
    WHERE condition;

    -- Delete all rows (no WHERE clause)
    DELETE FROM table_name;

    -- Delete using multiple conditions
    DELETE FROM table_name
    WHERE column1 = value1
      AND column2 = value2;

    -- Delete using an expression
    DELETE FROM table_name
    WHERE column_name < 1000;

    -- PostgreSQL special: RETURNING deleted rows
    DELETE FROM table_name
    WHERE condition
    RETURNING *;

	---------------------------------------------------------------------------
    Notes on DELETE with ORDER BY and CTE in PostgreSQL
	---------------------------------------------------------------------------

    1. ORDER BY is NOT allowed directly inside a DELETE statement.
       PostgreSQL syntax does not support:
           DELETE ... WHERE ... ORDER BY ...

    2. If we want the deleted rows in sorted order, we must use a CTE.
       CTE (Common Table Expression) is a temporary named result set
       created using the WITH keyword. It helps simplify complex queries
       and allows sorting of returned rows.

    3. The error you received is expected because PostgreSQL does not
       permit ORDER BY inside DELETE.

	---------------------------------------------------------------------------
    Example: Using a CTE to delete rows and return them sorted
	---------------------------------------------------------------------------

    WITH deleted AS (
        DELETE FROM users
        WHERE emp_id = 1
          AND department = 'information technology'
        RETURNING *
    )
    SELECT *
    FROM deleted
    ORDER BY emp_id ASC;

*/

