-- Create the table 
CREATE TABLE "Student"(
	"Student id" SERIAL,
	"Student Name" VARCHAR(30) NOT NULL,
	"Roll no" SMALLINT UNIQUE,
	"Contact no" NUMERIC(10) PRIMARY KEY,
	"Science" INT NOT NULL,
	"Math" INT NOT NULL,
	"English" INT NOT NULL,
	"Hindi" INT NOT NULL,
	"Total marks" INT NOT NULL,
	"Grade" CHAR(3) NOT NULL,
	"Result" VARCHAR(10) NOT NULL
);

SELECT * FROM "Student";

-- inserted the values 
INSERT INTO "Student" (
		"Student Name", "Roll no", "Contact no", 
		"Science",      "Math",    "English",
		"Hindi",      "Total marks",  "Grade", "Result"
) VALUES ('Aarav Sharma', 101, 9876543210, 85, 90, 88, 82, 345, 'A+', 'Pass'),
		 ('Isha Verma',   102, 9876543211, 78, 82, 80, 76, 316, 'A', 'Pass'),
		 ('Rohan Mehta',  103, 9876543212, 65, 70, 68, 72, 275, 'B+', 'Pass'),
		 ('Simran Kaur',  104, 9876543213, 92, 95, 94, 90, 371, 'A+', 'Pass'),
		 ('Yash Patel',   105, 9876543214, 40, 45, 50, 42, 177, 'C', 'Fail'),
		 ('Neha Singh',   106, 9876543215, 88, 84, 86, 80, 338, 'A+', 'Pass'),
		 ('Kabir Joshi',  107, 9876543216, 55, 60, 58, 62, 235, 'B', 'Pass'),
		 ('Tanya Bhatia', 108, 9876543217, 72, 75, 78, 70, 295, 'B+', 'Pass'),
		 ('Aditya Rao',   109, 9876543218, 95, 98, 96, 94, 383, 'A+', 'Pass'),
		 ('Mehul Jain',   110, 9876543219, 30, 35, 40, 38, 143, 'D', 'Fail');


-- Comaprision operator (basic syntax )
SELECT 10 <> 15 "Not Equal";
SELECT 10 = 10 AS "Equal";
SELECT 10 != 10 AS "Not Equal";
SELECT 10 > 20 AS "Greater then";
SELECT 15 >= 20 AS "Greater then Equal to";
SELECT 60 < 50 AS "Smaller then";
SELECT 90 <= 100 AS "Greater then";


-- Comparision operators
-- using WHERE CLAUSE
SELECT "Student Name" FROM "Student"
WHERE "Total marks" <> 500 ;


-- Comparision operator 
-- using WHERE CLAUSE
SELECT "Student Name" AS Client, "Science" AS Grade 
FROM "Student"
WHERE "Science" != 92;

-- Comparision operator
-- using WHERE CLAUSE
SELECT * FROM "Student"
WHERE "Grade" = 'A+';


-- Comparision operator
-- CASE STATMENT (Multipal condition)
SELECT "Student Name",
CASE
	WHEN "Total marks" >= 400 THEN 'First Devision'
	WHEN "Total marks" >= 200 THEN 'Second Devision'
	WHEN "Total marks" >= 200 THEN 'Third Devision'
	WHEN "Total marks" >= 0   THEN 'Fail'
	ELSE 'Student is not verified'
END AS "Student Grade"
FROM "Student" ;



-- Comparision operator
-- CASE STATMENT (Single condition)
SELECT "Roll no", "Science", "Math",
CASE 
	WHEN "Science" <= 30 THEN 'Fail'
	WHEN "Science" <= 60 THEN 'second'
	WHEN "Science" <= 90 THEN 'First'
	When "Science" <= 100 THEN 'Outstanding'
	ELSE 'Nothing Exist'
END AS "Status"
FROM "Student";



-- Comparision operator
-- CASE STATMENT (Single Statment)
SELECT "Student Name", "Roll no",
CASE "Result"
	WHEN 'Fail' THEN 'Not Promote'
	ELSE 'Promote'
END AS "Final Output"
FROM "Student";


SELECT * ,
CASE "Grade"
	WHEN 'A++' THEN 'Outstanding'
	WHEN 'A+' THEN 'Excellent'
	ELSE 'Good'
END AS "Performance"
FROM "Student";


SELECT * FROM "Student";

UPDATE tableNmae
SET colname = 
    CASE
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        ELSE default_result
    END AS alias_name;


-- Update practice
UPDATE "Student"
SET "Student Name" = 'Rohit Sharma'
WHERE "Contact no" = 9876543210;


-- select to check update
SELECT * FROM "Student" ORDER BY "Student id" ASC;



-- Comparision_operator
-- CASE STATMENT (Using Update)
UPDATE "Student"
SET "Result" = 
	CASE "Grade"
		WHEN 'A+' THEN 'First'
		WHEN 'C'  THEN 'Third'
		WHEN 'B'  THEN 'Second'
		WHEN 'B+' THEN 'Second'
		WHEN 'A'  THEN 'First'
		ELSE 'Fail'
	END;
-- -> it means when grade is equal to A+ then assign value 'First' 
--    to "Result"(variable/column) 
-- -> we can't use alias in update statment like END AS alias_name.



/*


Comparison operator (compare two data value ) : -
Comparison operator is a mathematical symbol used to compare two values or expressions to determine
their relationship—such as equality, inequality, or order. 

It returns a Boolean value of TRUE, FALSE, or UNKNOWN. 
Examples ➡️ =, <>, <, >, <=, >= 
   
Syntax : - (Basic syntax)
SELECT 10 <> 15;
SELECT 10 = 10;
SELECT 10 != 10;
SELECT 10 > 20;
SELECT 15 >= 20;
SELECT 60 < 50;
SELECT 90 <= 100;


   
Syntax : - 
SELECT * FROM tableName
WHERE condition;



Syntax : -
SELECT *,
CASE
	WHEN condition THEN result
	ELSE default_result
END
FROM tableName;



Syntax : -
SELECT *, 
CASE expression
	WHEN value THEN result
	ELSE default_result
END
FROM tableName;



Syntax : -
SELECT colname 
CASE 
	WHEN condition1 THEN result1
	WHEN condition2 THEN result2
	WHEN conditionN THEN resultn
	ELSE default_result
END AS alias_name
FROM tableName;


Syntax : -
SELECT colname, colname2,
CASE expresion
	WHEN condition1 THEN result1
	WHEN conditionN THEN resultN
	ELSE default_result
END AS alias_name
FROM tableName;



Syntax : -
UPDATE tableNmae
SET colname = 
    CASE
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        ELSE default_result
    END;

*/




-----------------------------------------------------------------------------------------------
/*
-- Good practice example
SELECT 
    quantity,
    price,
    CASE 
        WHEN quantity > 10 THEN price * quantity * 0.9  -- 10% discount
        ELSE price * quantity
    END AS final_price
FROM orders;

-- Good practice example
SELECT 
    (base_salary + COALESCE(bonus, 0)) * 1.1 AS projected_salary,
    CASE 
        WHEN total_employees = 0 THEN 0 
        ELSE total_sales / total_employees 
    END AS sales_per_employee
FROM department_metrics;
*/