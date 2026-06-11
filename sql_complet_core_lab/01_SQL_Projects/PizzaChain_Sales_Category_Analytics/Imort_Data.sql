-- DATA IMPORTING PROCESS :

-- importing around 100 data to pizzas 
COPY pizzas(pizza_id, pizza_type_id, size, price) 
FROM 'D:\pizza_sales\pizzas.csv'
DELIMITER ',' CSV HEADER;
SELECT * FROM pizzas;


-- importing the data to pizza_types
COPY pizza_types(pizza_type_id, "name", category, ingredients) 
FROM 'D:\pizza_sales\pizza_types.csv'             -- hrader is also imported because HEADER clause is not given
WITH(FORMAT CSV, DELIMITER ',', ENCODING 'WIN1252'); -- if utf8 error shown the use WIN1252 encoding
SELECT * FROM pizza_types;

	
-- importing the data around 21,000 to orders
COPY orders FROM 'D:\pizza_sales\orders.csv'
DELIMITER ',' CSV HEADER ;     -- WITH(FORMAT CSV, DELIMITER ', ENCORDING 'WIN1252')
SELECT * FROM orders;


-- importing the data value around 50,000 to order_details
COPY order_details FROM 'D:\pizza_sales\order_details.csv'
DELIMITER ',' HEADER CSV;
SELECT * FROM order_details;



-- Checking the data is inserting or not ? 
SELECT COUNT(order_id) FROM orders;
SELECT COUNT(order_id) FROM order_details;



/*
-- Update's data after getting errors
ALTER TABLE pizzas
DROP COLUMN "size";

-- update the chracter size
ALTER TABLE pizzas
ALTER COLUMN "size" TYPE CHAR(3);


ALTER TABLE pizzas
DROP CONSTRAINT pizzas_size_check ;

ALTER TABLE pizzas
ADD CONSTRAINT pizzas_size_check CHECK(size IN('S', 'M', 'L', 'XL', 'XXL'));


-- drop the constraint check
-- ALTER TABLE pizzas DROP CONSTRAINT pizzas_size_check;

-- add the constraint check
-- ALTER TABLE tableName ADD CONSTRAINT constraintName CHECK(columnName IN (values));
*/
