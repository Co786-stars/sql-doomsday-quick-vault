-- creating the databse 
CREATE DATABASE "Pizzahut";

-- rename the database 
ALTER DATABASE "Pizzahut" 
RENAME TO "RedChilli PizzaHub";


-- Again rename the database
ALTER DATABASE redchilli_pizzahub
RENAME TO pizzas;


-- creating the table pizzas 
CREATE TABLE pizzas(
	pizza_id VARCHAR(50) PRIMARY KEY,
	pizza_type_id VARCHAR(50) NOT NULL,
	size CHAR(1) NOT NULL CHECK (SIZE IN ('S', 'M', 'L', 'X')),
	price NUMERIC(5, 2) CHECK (price > 0),
	create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- creating the table pizzas_types
CREATE TABLE pizza_types(
	pizza_type_id VARCHAR(200) PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	category VARCHAR(150) NOT NULL,
	ingredients TEXT NOT NULL,
	created_at TIMESTAMPTZ  DEFAULT  CURRENT_TIMESTAMP,
	update_at TIMESTAMPTZ   DEFAULT  CURRENT_TIMESTAMP
);


-- creating the table orders
CREATE TABLE orders (
	order_id INT NOT NULL PRIMARY KEY,
	order_date DATE NOT NULL,
	order_time TIME NOT NULL
);


-- creating the table orders_details
CREATE TABLE order_details (
	order_details_id INT NOT NULL PRIMARY KEY,
	order_id INT NOT NULL,
	pizza_id TEXT NOT NULL,
	quantity INT NOT NULL
);

-- access the table
SELECT * FROM order_details;
SELECT * FROM orders;
SELECT * FROM pizza_types;
SELECT * FROM pizzas;  


