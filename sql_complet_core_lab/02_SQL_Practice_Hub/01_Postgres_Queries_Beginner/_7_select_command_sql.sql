SELECT * FROM appusers;
SELECT Username FROM appusers;
SELECT Username, signup_date FROM appusers;
SELECT COUNT(username) FROM appusers;
SELECT username FROM appusers;
SELECT  DISTINCT username FROM appusers; 
SELECT COUNT(DISTINCT username) FROM appusers;

SELECT * FROM appuser 
WHERE Username = 'Wizard';

-- Now a duplicate value is mention in username column 'Ankit Raj'
INSERT INTO appusers(username, user_id) VALUES('Ankit Raj', '100012');
SELECT * FROM appusers;
SELECT COUNT(Username) FROM appusers; -- the output is six 
SELECT COUNT(DISTINCT username) FROM appusers; -- now using Distnic to count only unique value
SELECT DISTINCT username FROM appusers; -- show only unique value

/*
SELECT statment is a fundamental part of SQL that use to select existing records from databse  
If we Want to retrieve all columns without specifying each one individually, we can use astrisk (*) 
SELECT DISTINCT statement in SQL is used to retrieve unique values from a specified column in a table. 
SELECT DISTINCT  ensures that duplicate values are eliminated, and only distinct (unique) val

Syntax: -
SELECT * FROM TableName;   
SELECT column_name FROM TableName
SELECT DISTINCT colum_name FROM TableNmae

*/








