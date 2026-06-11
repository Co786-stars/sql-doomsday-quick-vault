-- Queries 11th : Calculate the percentage contribution of each pizza type to total revenue.
-- solve        : simple concept precentage : (sum_of_pizza_perday_revenue/total_revenue)*100
SELECT pizza_types.category, SUM(pizzas.price*order_details.quantity) AS revenue,
	ROUND(SUM(pizzas.price*order_details.quantity)/(
	      SELECT SUM(pizzas.price*order_details.quantity) FROM pizzas
	      JOIN order_details ON order_details.pizza_id = pizzas.pizza_id)*100, 3) 
		  AS precentage_contribution
FROM pizza_types
JOIN pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY revenue DESC;




-- Queries 12th : Analyze the cumulative revenue generated over time.
-- solve
SELECT order_date, revenue, 
	SUM(revenue) OVER(ORDER BY order_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) FROM 
 (SELECT orders.order_date, SUM(order_details.quantity*pizzas.price) AS revenue FROM order_details
  JOIN orders ON orders.order_id = order_details.order_id
  JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
  GROUP BY orders.order_date
  ORDER BY orders.order_date ASC) AS total_revenue;




-- Queries 13th : Determine the top 3 most ordered pizza types based on revenue for each pizza category.
-- solve        : means top 3 pizza_type/pizza_ke_name ko show kerna hai revenue ke basis pe her ek category se
SELECT name, revenue, rev FROM
 (SELECT name, category, revenue, RANK() OVER(PARTITION BY category ORDER BY revenue DESC) AS rev FROM 
	(SELECT pizza_types.name, pizza_types.category, SUM(order_details.quantity*pizzas.price) AS revenue 
		FROM pizza_types
		JOIN pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
		JOIN order_details ON order_details.pizza_id = pizzas.pizza_id 
	GROUP BY (pizza_types.name, pizza_types.category)
	ORDER BY revenue DESC)
 ) WHERE rev <= 3;




-- DUSTBIN 🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️  ROUGH
-- rough to check the column where exist
SELECT * FROM pizzas;
SELECT * FROM pizza_types;
SELECT * FROM order_details;
SELECT * FROM orders





-- DUSTBIN 🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️🗑️ ROUGH
-- Calculate the percentage contribution of each pizza type to total revenue.
-- basic practice after two days same question 
SELECT pizza_types.category, 
ROUND(SUM(pizzas.price*order_details.quantity)/ 
( SELECT SUM(pizzas.price*order_details.quantity) FROM pizzas
  JOIN order_details ON pizzas.pizza_id = order_details.pizza_id
 ) * 100, 2) AS revenue FROM pizzas 
JOIN order_details ON pizzas.pizza_id = order_details.pizza_id
JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.category
ORDER BY revenue DESC;




