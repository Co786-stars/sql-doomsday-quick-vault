-- Question 1
CREATE TABLE AppUsers(
	User_ID INT PRIMARY KEY,
	Username VARCHAR(15) NOT NULL,
	Email VARCHAR(50) UNIQUE,
	Signup_Date DATE
);

-- Question 4
CREATE TABLE Invoices(
	Invoice_ID SERIAL PRIMARY KEY,
	Customer_Name VARCHAR(25) NOT NULL,
	Amount NUMERIC(10, 2),  
	Paid_Status VARCHAR(10) DEFAULT 'Pending',
	Due_Date DATE
); 

SELECT*FROM AppUsers; 
SELECT*FROM Invoices;
 
-- Code explanation --
/*
In this code, we are using the CREATE TABLE command to define new tables in SQL.

It is necessary to provide a table name followed by parentheses that contain column definitions.
Each column must include a name, its datatype, and any constraints (like PRIMARY KEY or NOT NULL).

Columns are separated by commas. If commas are missing or syntax is incorrect, SQL will throw an error.

At the end of the statement, a semicolon (;) is used to indicate the end of the command.

By this way sql internally convert all text in lower case to fix this we need to use double
quote like : CREATE TABLE "TableName"


Syntax: (Bigner Level)
CREATE TABLE TableName (
    ColumnName1 DataType Constraint,
    ColumnName2 DataType Constraint,
);


Syntax: (Working Professional)
CREATE TABLE "TableName" (
	 ColumnName1 DataType Constraint,
    ColumnName2 DataType Constraint,
)


At the same time more then one table may be or may not created in posgresSQL.
*/



