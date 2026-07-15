-- q1. Retrieve the total number of orders placed. 
-- solved
SELECT COUNT(order_id) 
	AS total_order
FROM orders;


-- q2. Calculate the total revenue generated from pizza sales.
-- solved
SELECT 
	SUM( order_details.quantity * pizzas.price) 
		AS total_revenue
FROM
	order_details
FULL JOIN pizzas
	ON order_details.pizza_id = pizzas.pizza_id;


-- q3. Identify the highest-priced pizza on the menu. 
-- solved
SELECT 
	pizza_types.name, 
	pizzas.price 
FROM pizzas
FULL JOIN pizza_types
	ON pizzas.pizza_type_id  = pizza_types.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;


-- q4. Identify the most commonly ordered pizza size. 
-- solve
SELECT pizzas.size,
       COUNT(order_details.order_details_id) AS comman_orders
FROM pizzas
FULL JOIN order_details
	ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizzas.size
ORDER BY comman_orders DESC;



-- q5. List the top 5 most ordered pizza types along with their total quantities.
SELECT 
	pizza_types.name  AS pizza_name,
	SUM(order_details.quantity)  AS quantity
FROM pizzas
JOIN pizza_types -- sometimes full joins in not supported
		ON pizzas.pizza_type_id  = pizza_types.pizza_type_id
JOIN order_details -- pizzas is join because there is no similar column in order_details and pizza_types
	ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_types.name
ORDER BY quantity DESC
LIMIT 5;

