-- Compound operator
SELECT * FROM "Student";

UPDATE "Student" SET "Hindi" += "Hindi"+10
WHERE "Roll no" = 102;  ------------------ WRONG WAY OF UPDATE    


UPDATE "Student" SET "Hindi" = "Hindi"+10
WHERE "Roll no" = 102;  ------------------ CORRECT WAY OF UPDATE 



/*
❌❌❌❌ ❌ Standard SQL does NOT support compound operator ❌ ❌ ❌ ❌ ❌ ❌ ❌

Compound operator
Compound operator in SQL is a shorthand operator that performs a specific operation on a variable 
or column and assigns the result back to the same variable or column in a single step
Example ➡️ +=, -=, *=, /=, %= , &=, |=, ^=

-------------------------------------------------
❌ NOT Supported In Any Other Major Databases:
Database			Support Status
MySQL				❌ No support
PostgreSQL			❌ No support
Oracle				❌ No support
SQLite				❌ No support
IBM DB2				❌ No support
MariaDB				❌ No support
Amazon Redshift		❌ No support
Google BigQuery		❌ No support
Snowflake			❌ No support

----------------------------------------------
Database Names That Support Compound Operators:
✅ Microsoft SQL Server
✅ Azure SQL Database
✅ Azure SQL Managed Instance

*/