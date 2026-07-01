SELECT *
FROM users
ORDER BY emp_id;


-- Update column value
UPDATE users
SET project_name = 'NcryCore';


-- Update column value 
UPDATE users
	SET full_name = 'winWizard'
WHERE 	full_name = 'wizard';


UPDATE users
	SET email = 'wizard33@gmail.com'
WHERE   email = 'winza123@gmail.com';


-- update multipal column
UPDATE users
	SET full_name = 'Aditya Raj',
		department = 'IT'
WHERE emp_id = 4;


-- update using expression
UPDATE users
	SET emp_salary = emp_salary + emp_id
WHERE emp_salary = 15000;


UPDATE users
	SET project_name = 'Nothing',
		emp_salary = emp_salary + emp_id
RETURNING *;


UPDATE users
	SET emp_salary
SELECT * 
FROM users;




/*
  Definition:-
  
  	The UPDATE command is used to modify or change existing records in a table.
    It updates the data that is already stored in the database. UPDATE affects
    only those rows that match the condition provided in the WHERE clause.

    If the WHERE clause is not used, then ALL rows in the table will be updated,
    which can be dangerous. Therefore, using a WHERE clause with UPDATE is
    considered a best practice.

    The UPDATE command works with the SET clause, where we specify which column
    should be updated and what the new value should be. In PostgreSQL, the
    RETURNING clause can be used to display the updated rows immediately.

    ---------------------------------------------------------------------------
    Syntax:
    ---------------------------------------------------------------------------

    -- Update a single column
    UPDATE table_name
    SET column_name = value
    WHERE condition;

    -- Update multiple columns
    UPDATE table_name
    SET column1 = value1,
        column2 = value2,
        column3 = value3
    WHERE condition;

    -- Update all rows (no WHERE clause)
    UPDATE table_name
    SET column_name = value;

    -- Update using an expression
    UPDATE table_name
    SET column_name = column_name + 500
    WHERE condition;

    -- PostgreSQL special: RETURNING updated rows
    UPDATE table_name
    SET column_name = value
    WHERE condition
    RETURNING *;


    ---------------------------------------------------------------------------
    Examples:
    ---------------------------------------------------------------------------

    -- Update salary of a specific employee
    UPDATE employees
    SET salary = 45000
    WHERE emp_id = 101;

    -- Update multiple fields of a single record
    UPDATE employees
    SET salary = 60000,
        city = 'Mumbai',
        department = 'HR'
    WHERE emp_id = 102;

    -- Increase salary of all employees by 500
    UPDATE employees
    SET salary = salary + 500;

    -- Update using another column
    UPDATE accounts
    SET balance = balance - fee
    WHERE account_type = 'Savings';

    -- PostgreSQL RETURNING example
    UPDATE students
    SET marks = marks + 5
    WHERE class = '10th'
    RETURNING *;

    ---------------------------------------------------------------------------
    Key Points:
    ---------------------------------------------------------------------------

    ✔ UPDATE modifies existing data (INSERT adds new data)
    ✔ WHERE clause targets specific rows
    ✔ Without WHERE → every row in the table gets updated
    ✔ Multiple columns can be updated at once
    ✔ Expressions can be used inside SET (e.g., column = column + 1)
    ✔ PostgreSQL supports RETURNING to show updated rows immediately
    ✔ UPDATE always follows the table’s existing structure
    ✔ String values must be written in single quotes (' ')


    ---------------------------------------------------------------------------
    Industry Standard Formatting:
    ---------------------------------------------------------------------------

    ✔ Write SQL keywords in UPPERCASE (UPDATE, SET, WHERE)
    ✔ Place each major clause on a new line
    ✔ Indent conditions under WHERE for readability
    ✔ Always end statements with a semicolon (;)
    ✔ Maintain clean spacing and alignment
    ✔ Use multi-line formatting for complex updates


	Note: -
	RETURNING CALUSE (few definitions)
	✔ The RETURNING clause is used in SQL to return the updated, inserted, or deleted rows
	  immediately after a DML operation (INSERT, UPDATE, DELETE).
	✔ It shows only the affected rows with their new values in real time.
	✔ RETURNING Show me the updated data immediately after the change.
	✔ RETURNING returns the real-time updated data of the rows affected by the DML statement
	
*/

