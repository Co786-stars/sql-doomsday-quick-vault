-- EXISTS is used to check whether a subquery returns ANY row
-- If the subquery returns at least one row → EXISTS = TRUE
-- If the subquery returns no rows → EXISTS = FALSE
-- EXISTS is used inside the WHERE clause
-- EXISTS is faster because SQL stops checking after finding the first matching row

-- Syntax of EXISTS
SELECT columnName
FROM tableName_
WHERE EXISTS (
    SELECT 1
    FROM anotherTable
    WHERE givenCondition
);



-- EXISTS checks whether a subquery returns any row; if yes, the condition is TRUE.
-- syntax of EXISTS
SELECT *
FROM students S
WHERE EXISTS (
    SELECT 1
    FROM fees F
    WHERE F.student_id = S.student_id
);




-- EXISTS = check if related data exists in another table
-- It does NOT return data from the subquery, only TRUE/FALSE
-- Show students who have paid fees
SELECT *
FROM students S
WHERE EXISTS (
    SELECT 1
    FROM fees F
    WHERE F.student_id = S.student_id
);


/*
    Definition:
    EXISTS is a logical condition used in SQL to check whether a subquery 
    returns ANY row. It does not return data from the subquery — it only 
    checks TRUE or FALSE.


    Key Points:
    - EXISTS returns TRUE if the subquery returns at least one row.
    - EXISTS returns FALSE if the subquery returns zero rows.
    - Used inside the WHERE clause.
    - Faster than IN because SQL stops searching after finding the first match.
    - Commonly used to check if related data exists in another table.


    When to Use EXISTS:
    - When we want to filter rows based on the presence of related data.
    - When we do NOT need actual values from the subquery.
    - When working with large tables (EXISTS is efficient).
    - When checking parent-child relationships (students → fees, employees → managers).


    Syntax:
    SELECT column_name
    FROM table_name
    WHERE EXISTS (
        SELECT 1
        FROM another_table
        WHERE condition
    );


    Example:
    Show students who have paid fees:
    SELECT *
    FROM students S
    WHERE EXISTS (
        SELECT 1
        FROM fees F
        WHERE F.student_id = S.student_id
    );


	Notes:
    - SELECT 1 is used because EXISTS only checks if a row exists.
    - Subquery is called an inner query or nested query.
    - EXISTS is often used with correlated subqueries.


    Inshort Way:
    EXISTS → TRUE if subquery returns any row  
    NOT EXISTS → TRUE if subquery returns no rows

*/
