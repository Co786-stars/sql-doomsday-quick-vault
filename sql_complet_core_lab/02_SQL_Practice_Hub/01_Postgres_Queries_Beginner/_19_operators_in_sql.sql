-- Logical operator AND
SELECT * FROM "Student"
WHERE "Student Name" = 'Isha Verma' AND "Total marks" > 300; 


-- Logical operator OR
SELECT * FROM "Student"
WHERE "Student Name" = 'Isha Verm' OR "Total marks" > 300; 


-- logical operator NOT 
SELECT * FROM "Student"
WHERE NOT "Result" = 'Fail';


-- Logical operator NOT, IN
SELECT * FROM "Student"
WHERE NOT "Result" IN ('Third', 'First');


-- login operator NOT, BETWEEN
SELECT * FROM "Student"
WHERE NOT "Roll no" BETWEEN 103 AND 107
ORDER BY "Roll no" ASC


-- logical operator IS NULL
-- checking the value is null or not ?
SELECT * FROM "Student"
WHERE NOT "Roll no" IS NULL; 


-- SELECT * FROM "Student";

-- logical operator CASE
-- use with case clause
SELECT *,
CASE 
	WHEN "Result" = 'First' AND "Grade" = 'A+' THEN 'Toper of The Year' 
	ELSE 'Outstanding Performance'
END AS "Outstanding Performance"
FROM "Student";


/*

Logical operator (combine multiple conditions)
logical operator is a symbol or keyword used to combine or manipulate Boolean values in logical 
expressions, typically to control flow or filter conditions in programming and SQL.
Examples ➡️ AND, OR, NOT 


Syntax : - 
SELECT colname FROM tableName
WHERE NOT condition;

Syntax : -
SELECT * FROM tableName
WHERE condition1 AND condition2;

Syntax : -
SELECT colname tableName
WHERE condition1 OR condition2;

Syntax : -
SELECT * FROM tableName
WHERE colname BETWEEN condition1 AND condition2;

*/