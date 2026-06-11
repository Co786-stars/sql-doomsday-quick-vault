-- create the tables
CREATE TABLE "Product"(
	"Product Name" VARCHAR(30),
	"Quantity" INT,
	"Price" INT,
	"Rating" NUMERIC(1)
);

-- select the values
SELECT * FROM "Product";

-- insert the values
INSERT INTO "Product"("Product Name", "Quantity", "Price", "Rating") 
	VALUES  ('moblile',  2, 100, 5),
			('laptop',	 1, 500, 3),
			('fan',      3, 600, 2),
			('charger',  1, 300, 4),
			('earphone', 2, 800, 2),
			('keyboard', 1, 200, 1),
			('monitor',  3, 900, 3);



----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- apply the functions that  gives important concept of agreated Fucntion
-- Aggreated function --> COUNT(), SUM(), AVG(), MAX(), MIN() ..etc

SELECT * FROM "Product";

SELECT COUNT("Quantity") FROM "Product"; -- return total countable 

-- condition
SELECT COUNT(*) FROM "Product"
WHERE "Product Name" LIKE '%top';
 
SELECT SUM("Quantity") FROM "Product";  -- return sum the total row number


SELECT AVG("Quantity") AS avrage FROM "Product";  -- return aveage of total number

SELECT MAX("Quantity") FROM "Product";  -- return the maximum number
SELECT MIN("Quantity") FROM "Product";  -- return the minimum number


-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-- apply the functions that important gives concept of String Fucntion
-- String function   :  UPPER(), LOWER(), LENGTH(), CONCAT(), SUBSTRING() TRIM() ..etc

SELECT UPPER("Product Name") FROM "Product"; -- covert the entire string into upper case 

SELECT LOWER("Product Name") FROM "Product"; -- covert the entire string into lower case 

SELECT * FROM "Product";

SELECT CONCAT("Product Name",'-', "Price") AS productprice
FROM "Product";  -- concat the two column 

SELECT * FROM "Product" ORDER BY "Product Name";
SELECT SUBSTRING("Product Name", 1,4) FROM "Product"
ORDER BY "Product Name"; --  the first chracter varing in substring is starting point and second is 
						 --   choose how many character is display 

SELECT "Product Name", LENGTH("Product Name") AS "Length" 
FROM "Product";  --  display the length of given value


-- Remove leading and traling space from string
SELECT LENGTH(TRIM('  Wizard   ')) AS Trimmed_text; -- trim read only text only means it remove space
SELECT LENGTH('  Wizard   ') AS Trimmed_text; -- read the space as a chracter


-- Replace the column value to from new value
SELECT REPLACE("Product Name", 'laptop', 'computer') AS col_update 
FROM "Product"; 

SELECT REPLACE("Product Name", 'e', 'T') FROM "Product"; -- replace the 'e' from 'T' in column 


-- select chracter from right side as per given value
SELECT * FROM "Product";
SELECT RIGHT("Product Name", 3) AS "Right_3" 
FROM "Product";


-- select chracter from left side as per given value
SELECT LEFT("Product Name", 3) AS "Right_3" 
FROM "Product";


/*

Type of functions in SQL 
Aggreate function      :  COUNT(), SUM(), AVG(), MAX(), MIN() ..etc
String function        :  UPPER(), LOWER(), LENGTH(), CONCAT(), SUBSTRING() TRIM() REPLACE()
                          LEFT(), RIGHT() ..etc
Date and Time function :  NOW(), CURRENT_DATE(), CURRENT_TIME(), DATE_PART(), AGE(), EXTRACT()
                          TO..etc
   
   ----------------->>>>>>>> NEXT MODULE _25_function_sql for DATE_TIME_FUNCTION <<<<<<<<--------

*/




