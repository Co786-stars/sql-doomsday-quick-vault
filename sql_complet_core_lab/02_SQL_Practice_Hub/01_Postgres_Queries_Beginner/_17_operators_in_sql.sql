-- arthmatic operator basic
SELECT 10+15 AS additon;
SELECT 15*02 AS multiply;
SELECT 10/05 AS divide;
SELECT 05/10 AS devide;
SELECT 18%05 AS reminder;
SELECT 05%10 AS reminder;


-- arthmatic operator simple
SELECT "QUANTITY RATE"+"TOTAL AMOUNT" AS "Add Two Column" FROM  "Untitled Product";
SELECT "TOTAL AMOUNT" - "RATE" AS "Subtract column" FROM "Untitled Product";
SELECT "TOTAL AMOUNT"*"RATE" AS "Multiply column" FROM "Untitled Product" ;
SELECT "TOTAL AMOUNT"/"RATE" AS "Multiply column" FROM "Untitled Product" ;
SELECT "RATE"%"TOTAL AMOUNT" AS "Multiply column" FROM "Untitled Product" ;
SELECT * FROM "Untitled Product";


-- Operator Precedence rule in SQL
-- Order of Evaluation (Highest to Lowest): -
-- Parentheses ()
-- Multiplication (*), Division (/), Modulo (%)
-- Addition (+), Subtraction (-)

-- complex arthmatic caluactions : -
SELECT 5+2*3;

SELECT(5+2)*3;


-- Integer division (truncates decimal)
SELECT 5 / 2;        -- Result: 2 (in some SQL dialects)
-- Decimal division
SELECT 5.0 / 2.0;    -- Result: 2.5
SELECT CAST(5 AS DECIMAL) / 2;  -- Result: 2.5


SELECT ("RATE"+5)*3 AS "New Rate" FROM "Untitled Product";


SELECT * FROM "Untitled Product"
WHERE "QUANTITY RATE"*"RATE" = "RATE";




/*
Operators in SQL are specialized symbols or reserved keywords that perform specific operations on 
one or more operands (expressions, column values, or literals) within a query to manipulate data, 
define conditions, and control program flow. 

They are fundamental constructs for data retrieval, transformation, and analysis, enabling set 
operations, logical comparisons, arithmetic calculations, and complex conditional logic.

In Simple Way : -
An operator is a symbol or keyword used to perform an operation on one or more values or variables.

There are the eight type of operator in SQL 
1) Arithmetic operator (perform mathmatical operation)
   Arithmetic operators in SQL are used to perform mathematical operations/calculations on numerical 
   data within the columns or expressions of a database query.
   Examples ➡️ +, - , * , /, %


2) Comparison operator (compare two data value )
   Comparison operator is a mathematical symbol used to compare two values or expressions to determine
   their relationship—such as equality, inequality, or order. 
   
   It returns a Boolean value of TRUE, FALSE, or UNKNOWN. 
   Examples ➡️ =, <>, <, >, <=, >= 


3) Logical operator (combine multiple conditions)
   logical operator is a symbol or keyword used to combine or manipulate Boolean values in logical 
   expressions, typically to control flow or filter conditions in programming and SQL.
   Examples ➡️ AND, OR, NOT 


4) Bitwise operator (perform bit-level operations)
   Bitwise operators perform low-level operations on the individual binary bits of integer values, 
   allowing for direct bit manipulation, masking, and testing within SQL queries.
   
   Bitwise operator is a symbol used to perform operations directly on the binary (bit-level) 
   representations of integers, manipulating individual bits to produce a result.
   Example ➡️ &, |, ^, ~, <<, >>

   
5) Compound operator (MOST OF THE RDBMS DOESN'T SUPPORT COMPOUND OPERATOR)
   Compound operator in SQL is a shorthand operator that performs a specific operation on a variable 
   or column and assigns the result back to the same variable or column in a single step
   
   The RDBMS like Microsoft SQL Server, Azure SQL Database, Azure SQL Managed Instance
   support compound operator.
   
   But Most of the RDBMS doesn't support compound operator like MySQL, PostgreSQL, Oracle, SQLite, 
   MariaDB, IBM DB2, Amazon Redshift, Google BigQuery ..etc
   Example ➡️ +=, -=, *=, /=, %= , &=, |=, ^=

   
6) String operator (perform String operation)
   String operators in SQL are special operators and functions used to manipulate, combine, compare, 
   or perform operations on character string data types.
   Example ➡️ +, ||


7) Unary operator (DOES NOT SUPPORT IN SQL LIKE PROGRAMMING LANGUAGE)
   Unary operator is a type of operator that acts on a single operand to perform an operation, 
   such as negation, increment, or logical inversion. 
   
   It simplifies expressions by modifying or evaluating one value at a time, making it a fundamental 
   building block in programming and mathematical logic.

   It's called "unary" because it involves only one input to perform an action on experession or etc..
   
   Types of Unary Operators are :
    → Unary Plus  (inverts all bits)  : +
    → Unary Minus (negates the value) : -
    → Bitwise NOT (inverts all bits)  : ~

	Unary Operators are classified into six part:
	→ Arithmetic Unary Operators: +, -
	→ Increment/Decrement Operators: ++, --
	→ Logical Unary Operator: !
	→ Bitwise Unary Operator: ~
	→ Type Casting Unary Operator: (type)
	→ Address and Pointer Operators (C/C++): &, *

   Syntax in SQL and C++
    ------------------------------
	SQL : -
	SELECT -salary FROM employees;
	
	C++ : -
	int x = 10;
	cout << -x;   // Output: -10
	cout << !true; // Output: false



8) Set operator (combine the results of two queries)
   Set operators in SQL are specialized commands that combine the result of two or more SELECT 
   queries into a single result set. 
   Example ➡️ UNION, UNION ALL, INTERSECT, EXCEPT(MINUS in Oracle)


9) Other operators in SQL :- (we also use some other in SQL)
   Other operators provide specialized functionality for filtering, pattern matching, range 
   selection, null handling, and result set management beyond basic comparisons."
   Example ➡️ BETWEEN, LIKE, IN, IS NULL, LIMIT, DISTINCT, ORDER BY


Syntax : - (arthmatic operator)
SELECT 10+20;
SELECT 10-20 AS subtract;
SELECT col1+col2 FROM tableName ;
SELECT col1+col2 AS multiply FROM tableName;


*/


