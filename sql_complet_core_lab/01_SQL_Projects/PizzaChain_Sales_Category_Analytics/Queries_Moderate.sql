-- Queries 6th : Join the necessary tables to find the total quantity of each pizza category ordered.
-- solve
SELECT pizza_types.category, SUM(order_details.quantity) AS quantity FROM pizza_types
JOIN pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY quantity DESC;



-- Queries 7th : Determine the distribution of orders by hour of the day.
-- solve
SELECT * FROM orders;
SELECT EXTRACT(HOUR FROM order_time) AS distributed_time_per_hour,
	   COUNT(order_id) AS order_distribution FROM orders
GROUP BY distributed_time_per_hour
ORDER BY order_distribution DESC;




-- Queries 8th : Join relevant tables to find the category-wise distribution of pizzas.
-- solve
SELECT category AS pizza_category, COUNT(name) FROM pizza_types
GROUP BY category
ORDER BY count;




-- Queries 9th : Group the orders by date and calculate the average number of pizzas ordered per day.
-- solve         avarage = sum of the value / total number of value,   AVG() --> predefine formula 

SELECT ROUND(SUM(order_quantity_perday)/COUNT(order_quantity_perday), 4) AS pizza_average_perday FROM 
(SELECT order_date, SUM(order_details.quantity) AS order_quantity_perday FROM order_details
JOIN orders ON orders.order_id = order_details.order_id
GROUP BY orders.order_date 
ORDER BY orders.order_date);


SELECT ROUND(AVG(quantity), 2) AS pizza_average_perday FROM     -- using predefine fucntion AVG()
(SELECT order_date, SUM(order_details.quantity) AS quantity FROM order_details
JOIN orders ON orders.order_id = order_details.order_id
GROUP BY orders.order_date 
ORDER BY orders.order_date);




-- Queries 10th : Determine the top 3 most ordered pizza types based on revenue.
-- solve
SELECT pizza_types.name, ROUND(SUM(pizzas.price*order_details.quantity), 1) AS revneue FROM pizza_types
JOIN pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details ON order_details.pizza_id  = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY  revneue DESC
LIMIT 3;




/*
question 9th 
Basic mistakes ❎ solve average_order_id number at the place of average_quentity 
SELECT orders.order_date, SUM(orders.order_id) AS order_per_day, 
SUM(orders.order_id)/COUNT(orders.order_id) AS Average_order_per_day   -- manually using math fomula
FROM orders GROUP BY order_date
ORDER BY order_date DESC;

SELECT order_date, round(AVG(order_id),2) FROM orders
GROUP BY order_date
ORDER BY order_date;
*/



/*
question 10th 
Basic mistakes ❎  forget using sub queries
SELECT pizzas.pizza_type_id AS pizza_type, SUM(pizzas.price) AS revenue, order_details.order_id FROM pizzas
JOIN order_details ON pizzas.pizza_id = pizzas.pizza_id
GROUP BY revenue
ORDER BY revenue DESC;
*/

