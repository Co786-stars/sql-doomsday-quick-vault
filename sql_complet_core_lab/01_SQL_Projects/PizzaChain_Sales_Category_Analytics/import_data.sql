-- creating the menu of the table
CREATE TABLE pizza_menue (
	pizza_id		VARCHAR(150) NOT NULL,
	pizza_type_id	VARCHAR(100) NOT NULL,
	size 			CHAR(5) NOT NULL,
	price			DECIMAL(5,2) NOT NULL
)

-- renamed the table
ALTER TABLE pizza_menue
RENAME TO pizzas;

-- importing data from pizzas.csv file
COPY pizzas (
    	pizza_id,
    	pizza_type_id,
    	size,
    	price
)
FROM 'D:/pizza_sales/pizzas.csv'
DELIMITER ','
CSV HEADER;




-- creating pizza_types table
CREATE TABLE pizza_types (
	pizza_type_id 		VARCHAR(150) PRIMARY KEY, 
	name 				VARCHAR(500) NOT NULL,
	category 			VARCHAR(250) NOT NULL,
	ingredients 		TEXT NOT NULL,
	ingredient_count 	INT NOT NULL
);

-- renamed the table
ALTER TABLE pizza_catogry
RENAME TO pizza_types;


-- remove extra column
ALTER TABLE pizza_types
DROP COLUMN ingredient_count;


-- importing data from pizza_types.csv file
COPY pizza_types (
		pizza_type_id,
		name,
		category,
		ingredients
)
FROM 'D:\pizza_sales\pizza_types.csv'
DELIMITER ','
CSV HEADER;




-- creating orders table
CREATE TABLE orders (
		order_id 	INT  PRIMARY KEY,
		order_date  DATE NOT NULL,
		order_time 	TIME NOT NULL
);

-- importing data from orders.csv file
COPY orders (
	order_id,
	order_date,
	order_time
)
FROM 'D:\pizza_sales\orders.csv'
DELIMITER ','
HEADER;




-- creating order_details table
CREATE TABLE order_details (
		order_deails_id	INT NOT NULL,
		order_id 		INT NOT NULL,
		pizza_id 		VARCHAR(150) NOT NULL,
		quantity 		INT NOT NULL
);

-- rename the column name order_details
ALTER TABLE order_details
RENAME COLUMN order_deails_id TO order_details_id 


-- importing data from order_details.csv file
COPY order_details (
	order_details_id,
	order_id,
	pizza_id,
	quantity
)
FROM 'D:\pizza_sales\order_details.csv'
DELIMITER ','
HEADER;



-- select the table data 
SELECT *
FROM pizza_types;


/*

syntax: for importing data from csv
COPY table_name (
	column1, 
	column2, 
	.....
)
FROM 'file_path'
DELIMITER ','
CSV HEADER;


syntax: -- if utf8 error shown the use WIN1252 encoding
COPY table_name (
	column1,
	column2,
	
)
FROM 'file_path'
WITH(FORMAT CSV, DELIMITER ',', ENCODING 'WIN1252'); 

*/


