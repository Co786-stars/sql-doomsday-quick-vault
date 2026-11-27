CREATE TABLE pizzas(
	pizza_id	VARCHAR(50) PRIMARY KEY,
	pizza_type	VARCHAR(50) NOT NULL,
	size		CHAR(1)	NOT NULL CHECK (SIZE IN ('S', '	M', 'L', 'X')),
	price		NUMERIC(5, 2) 	CHECK(price > 0),
	create_at  	TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE orders(
		order_id 	INT  NOT NULL PRIMARY KEY,
		order_date 	DATE NOT NULL,
		order_time  TIME NOT NULL
);

SELECT *
FROM pizzas;

SELECT *
FROM order_details;

SELECT *
FROM orders;

SELECT *
FROM pizzas;

SELECT *
FROM pizza_types;




