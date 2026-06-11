-- Queries 1st : Retrieve the total number of orders placed.
-- solve
SELECT COUNT(order_id) AS toal_orders FROM orders;



-- Queries 2nd : Calculate the total revenue generated from pizza sales.
-- solve
SELECT ROUND(SUM(order_details.quantity*pizzas.price),2) AS total_reveneue 
FROM order_details
JOIN pizzas
ON order_details.pizza_id = pizzas.pizza_id;



-- Queries 3rd : Identify the highest-priced pizza.
SELECT "name" AS pizza_name, category, price FROM  pizza_types
JOIN pizzas
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
ORDER BY price DESC
LIMIT 1;

-- delete the header row that imported by mistake before
DELETE FROM pizza_types
WHERE name = 'name';



-- Queries 4th : Identify the most common pizza size ordered.
SELECT size AS pizza_size, COUNT(order_details_id) FROM order_details
JOIN Pizzas
ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_size
ORDER BY pizza_size ASC;



-- Queries 5th : List the top 5 most ordered pizza types along with their quantities.
SELECT pizza_types.name, SUM(order_details.quantity) AS quantity FROM pizza_types
JOIN pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details ON  pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_types.name
ORDER BY quantity DESC
LIMIT 5;




-- Rough access the table
SELECT * FROM pizzas;
SELECT * FROM order_details;
SELECT * FROM pizza_types;
SELECT * FROM orders;

SELECT pizza_type_id, pizza_type_id 
FROM order_details, pizzas;

