-- creating the table for e-commerece platform
CREATE TABLE Products(
	"Product ID" SERIAL NOT NULL UNIQUE,
	"Product Nmae" VARCHAR(40) NOT NULL,
	 Price NUMERIC(5, 2) NOT NULL,
	"Stock Quantity" INT NOT NULL,
	Cateogry VARCHAR(30)
);
-- access the column
SELECT * FROM Products;


-- extra : rename the column cateogry
ALTER TABLE Products
RENAME COLUMN Cateogry TO Categorary;


ALTER TABLE Products
RENAME COLUMN "Product Nmae" TO "Product Name";
SELECT * FROM Products; -- check the value is renamed or not.


--  Value inserted: without quot python detect column in lowecase using quot 
--  it read as it is same.
INSERT INTO Products("Product Name", Price, "Stock Quantity", Categorary) 
	   VALUES('Herbal Shampoo', 299.99, 50,  'Haircare'),
	         ('Glow Serum',     499.50, 30,  'Skincare'),
			 ('Aloe Facewash',  199.00, 100, 'Cleanser');

-- try to access the inserted column
SELECT * FROM Products;



-- DELETE command in SQL is used to remove one or more existing records (rows) from a table in a 
-- database. It's a critical and powerful command that permanently removes data, so it must be used 
-- with caution.

-- CREATE A TABLE 2 TO DEMONESTRATE DELETE IN NEXT MODULE
CREATE TABLE hello(
		"Column1" INT,
		"Column2" VARCHAR(10) NOT NULL,
		"Column3" VARCHAR(20),
		"Column4" INT UNIQUE,
		"Column5" CHAR(10) NOT NULL,
		"Column6" VARCHAR PRIMARY KEY 		
);
SELECT * FROM hello;
