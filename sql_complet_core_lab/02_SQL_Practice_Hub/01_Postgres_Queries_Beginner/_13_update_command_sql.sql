-- double Quote is important to make table like this
CREATE TABLE IF NOT EXISTS "Company Employ" (
	"Employ ID" VARCHAR(20) UNIQUE,
	"Employ Name" VARCHAR(40) NOT NULL,
	"Department" VARCHAR(40) NOT NULL,
	"Employe Salary" NUMERIC(5, 2) NOT NULL,
	"Salary Status" VARCHAR(20) NOT NULL,
	"Email" VARCHAR(40) NOT NULL UNIQUE,
	"Contact Number" NUMERIC(10) NOT NULL
);

SELECT * FROM "Company Employ";

-- insert the values 
INSERT INTO "Company Employ" VALUES
('metec8198', 'Narayan','HR', 	 600.00, 'Pending',  'rajditya@gmail.com', 8127969798),
('metec9698', 'Pratap', 'Sales', 450.00, 'Released', 'araj14209a@gmail.com', 9627469798),
('metec7143', 'Warma',  'HR', 	 240.00, 'Pending',  'saurabaditya48@gmail.com', 7127559743),
('metec9358', 'Thakur', 'Sales', 800.00,'Released', 'raditya82453@gmail.com', 9327969758);


--------------------------UPDATE COMMAND-----------------------------------------------------

-- Single condition
UPDATE "Company Employ" SET "Department" = 'IT' 
WHERE "Employ ID" = 'metec9698';


-- Multipal condition
UPDATE "Company Employ" 
SET "Department" = 'Technical', "Salary Status" = 'Released'
WHERE "Employ ID" = 'metec8198';

-- No condition 
UPDATE "Company Employ"
SET "Employe Salary" = "Employe Salary" + 100.00;   -- set/add the +100 in all employ salary


UPDATE "Company Employ"
SET "Contact Number" = 9798962781
WHERE "Email" LIKE '%@gmailoutlook.com.'; -- no update because condition is not match outlook.com.
 										  -- if why use %@gmail.com, %outlook.com need to known ?

SELECT "Employ ID","Department" FROM "Company Employ";
SELECT * FROM "Company Employ" ORDER BY "Email" DESC; -- display table in decending format 


/*

UPDATE COMMAND : -

UPDATE command in SQL is a Data Manipulation Language (DML) statement used to modify existing records 
in a database table. 

It does not add new rows or delete existing ones; instead, it changes the data within one or more 
columns of rows that already exist

Syntax : -
UPDATE Employees
SET column1 = value;

Syntax : -
UPDATE tableName
SET column1 = value1, column2 = value2, ...
WHERE condition;

Extra : -
  > UPDATE is used to modify or update  existing records or data in a database.
  > we use some clause or keywords with update command like SLECT, WHERE etc. 
  > SELECT is use to choose where we update records and WHERE is use to give condition .  
  > if WHERE clause is not use then all records are update according to given statment.
*/