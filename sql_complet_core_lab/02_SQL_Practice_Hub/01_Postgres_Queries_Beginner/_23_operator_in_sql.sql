-- We have two table 
SELECT * FROM "Student";
SELECT * FROM "Untitled Product";
SELECT * FROM "Company Employ";

-- Combine different column from different table without 
-- including duplicate value (UNION)
SELECT "Student Name" FROM "Student"
UNION
SELECT "NAME OF COSTUMER" FROM "Untitled Product"
ORDER BY "Student Name";



-- Combine the different column best on condtion (UNION)
SELECT "Student Name" FROM "Student" 
WHERE "Student Name" = 'Tanya Bhatia'
UNION 
SELECT "Employ Name" FROM "Company Employ"
WHERE "Employ Name" = 'Thakur';



-- UNION ALL
SELECT * FROM "Student";
SELECT * FROM "Company Employ";

INSERT INTO "Company Employ"
	VALUES('metec5635', 'Rohan Mehta', 'IT', 600.10, 'Pending', 'wizard32@gmail.com', 5463254712),
		  ('metec3525', 'Simran kaur', 'IT', 600.10, 'Pending', 'wizard23@gmail.com', 2632445621),
		  ('metec4264', 'Yash Patel', 'HR', 800.10, 'Relesed', 'wizard95@gmail.com', 7461254215),
		  ('metec2172', 'Neha Singh', 'Sales', 100.50, 'Pending', 'wizard34@gmail.com', 9862547893),
		  ('metec4089', 'Tanya Bhatia', 'IT', 900.20, 'Reseled', 'wizard21@gmail.com', 2536325232);



-- combine different column from different table 
-- including duplicate values (UNION ALL)
SELECT "Student Name" FROM "Student"
UNION ALL
SELECT "Employ Name" FROM "Company Employ";


-- -- combine different column from different table
-- display only duplicate value
SELECT "Student Name" FROM "Student"
INTERSECT
SELECT "Employ Name" FROM "Company Employ";



-- Shows unique results from first SELECT
SELECT "Student Name" FROM "Student"
EXCEPT
SELECT "Employ Name" FROM "Company Employ";

/*

Set operator (combine the results of two queries)
Set operators in SQL are specialized commands that combine the result of two or more SELECT queries
into a single result set. 
Example ➡️ UNION, UNION ALL, INTERSECT, EXCEPT(MINUS in Oracle)

UNION : -
UNION is a SQL set operator that combines the results of two or more SELECT queries into a single result set, while 
automatically removing duplicate rows.

Syntax : -
SELECT colname FROM tableName1st
UNION
SELECT colname FROM tableName2nd;


Syntax : -
SELECT colname FROM tableName1st
WHERE condition
SELECT colname FROM tableName2nd 
WHERE condition;


Syntax : -
SELECT colname FROM tableName1st
UNION ALL 
SELECT colname FROM tableName2nd;



UNION ALL : -
UNION ALL is a SQL set operator that combines the results of two or more SELECT queries into a single result set, while 
keeping all duplicate rows.

Syntax : -
SELECT colname FROM tableName1st
UNION ALL 
SELECT colname FROM tableName2nd
ORDER BY colname ;



INTRESECT : -
INTERSECT is a SQL set operator that returns only the common rows that appear in both of the SELECT query results.

In simple way it Show me only what exists in BOTH result set the operator is case-sensitive in most databases and
Order matters (A INTERSECT B) gives the same result as (B INTERSECT A) and Not all database systems support 
INTERSECT like (MySQL doesn't natively support it)


Syntax : -
SELECT colname FROM tableName1st
INTERSECT
SELECT colname FROM tableName2nd;


EXCEPT : -
Returns distinct rows from the first query that are NOT in the second query
means Shows unique results from first SELECT

Syntax : -
SELECT column1 FROM table1
EXCEPT
SELECT column2 FROM table2;


NOTE : -
UNION	 : Removes duplicates 		 → A, B, C + B, C, D = A, B, C, D
UNION ALL: Keeps duplicates			 → A, B, C + B, C, D = A, B, C, B, C, D
INTERSECT: Only duplicates  		 → A, B, C + B, C, D = B, C
EXCEPT   : Unique from First Select	 → A, B, C + B, C, D = A

*/




--💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫
-- ___________________________________________Other operators____________________________________________
--💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫💫

SELECT * FROM "Company Employ";

-- BETWEEN operator define display student name who got the marks between 80 and 90 ---(BETWEEN ) 
SELECT "Student Name", "Contact no", "Math" FROM "Student"
WHERE "Math" BETWEEN 80 AND 90;


-- LIKE operator find the employ whos email is end with @gmail.com  ---( LIKE )
SELECT "Employ Name", "Email" FROM "Company Employ"
WHERE "Email" LIKE '%@gmail.com';


SELECT "Employ Name" FROM "Company Employ"
WHERE "Employ Name" LIKE '%ta'; s



 -- IN operator (we can also select usng or operator)
SELECT "Employ Name", "Employ ID", "Department" FROM "Company Employ"
WHERE "Department" IN ('HR', 'IT');


-- bothe code give same result what ever we use IN either OR (Depend upon condition)
SELECT "Employ Name", "Employ ID", "Department" FROM "Company Employ"
WHERE "Department" = 'HR' OR "Department" = 'IT';


SELECT "Employ Name", "Employ ID", "Department" FROM "Company Employ"
WHERE  "Department" IS NULL; -- if there is no null value then no value is shown

-- Retrive the data according to given limit(value)
SELECT * FROM "Company Employ";
LIMIT 2;


-- Retrive the list of unique data 
SELECT DISTINCT "Grade" FROM "Student"; -- display only unique value


-- Count How many unique departments exist
SELECT COUNT(DISTINCT "Department") AS "Post" 
FROM "Company Employ";

-- countnumber of unique grade
SELECT COUNT("Grade") FROM "Student";


/*
Other Operators : -
IN : - (Checks if a value matches any value in a given list.)
IN operator allows you to specify multiple values in a WHERE clause. It's a shorthand for 
multiple OR conditions.

Syntax : - ( IN operator )
SELECT colname1 colname2 FROM tableName
WHERE colname IN (value1, value2); 

SELECT colname1 colname2 FROM tableName
WHERE colname = value1 OR colname = value2;




BETWEEN : - (Checks if a value is within a specified range (including the endpoints)
The BETWEEN operator selects values within a given range. The range can be numbers, text, or dates.
It is inclusive, meaning the beginning and end values are included in the results.






LIKE :-  (Checks if a value matches a pattern using wildcards.)
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column. 
It uses two main wildcard characters
% (Percent): Represents zero, one, or multiple characters.
_ (Underscore): Represents a single character.

Syntax : -
SELECT colname1, colname2 FROM tableName
WHERE colname LIKE '%wildcard_chracter';

SELECT colname1, colname2 FROM tableName
WHERE colname LIKE '%wildcard_chracter%'

SELECT colname1, colname2 FROM tableName
WHERE colname LIKE '_wildcard_chracter'




IS NULL : -  (check there is any NULL value are avaliable or NOT)
IS NULL operator is used to check for missing or unknown values in a column. In databases, a NULL 
value represents a field with no value - it is not the same as zero or an empty string ('').

Syntax : -
SELECT colname1 colname2 FROM tableName
WHERE  colname IS NULL;




LIMIT : -
LIMIT clause in SQL is used to restrict the number of rows returned by a query, which is very 
useful for improving performance and managing large datasets

Syntax : -
SELECT * FROM tableName
LIMIT 3;

Note : -  (How use in other RDBMS)
MySQL, PostgreSQL, SQLite	LIMIT	      ---->     SELECT * FROM table LIMIT 5;
SQL Server / MS Access	    TOP	          ---->     SELECT TOP 5 * FROM table;
Oracle (12 and above)	    FETCH FIRST   ---->  	SELECT * FROM table FETCH FIRST 5 ROWS ONLY;




ORDER BY : -
ORDER BY operator in SQL is used to sort the result set of a query by one or more columns, either 
in ascending or descending order.

Syntax : -
SELECT column1, column2, ...
FROM table_name
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;




DISTINICT : -
DISTINCT keyword in SQL is used to eliminate duplicate rows from the query results and return 
only unique values.


Syntax : -
SELECT DISTINCT column1, column2, ...
FROM table_name;

Syntax : - (using clause)
SELECT DISTINCT column1 FROM tableName
WHERE condition
ORDER BY column1;

Syntax : -
SELECT COUNT(colname) FROM tableName;

*/




