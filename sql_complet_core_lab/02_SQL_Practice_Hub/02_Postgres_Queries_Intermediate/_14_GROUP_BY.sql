-- group by accourding to 2 column
SELECT region, 
	   COUNT(region)
FROM SalesData
GROUP BY region;  -- gives the count degit of all value



-- group by accourding to 2 column
SELECT amount, 
	   SUM(amount)
FROM SalesData
GROUP BY amount
ORDER BY amount;


-- group by accourding to 2 column
SELECT salary,
	   COUNT(salary)
FROM demo_users
GROUP BY salary;


-- group by Multiple Columns
SELECT full_name,
	   salary,
	   COUNT(salary)
FROM demo_users
GROUP BY full_name, salary;


-- selecting the the table 
SELECT *
FROM SalesData


/*
	Definition:
	The GROUP BY clause in SQL is used to arrange identical data into groups.
	It is mainly used with aggregate functions like SUM(), COUNT(), AVG(), MIN(), and MAX
	to perform calculations on each group of rows.
	
	Key Points:
	- GROUP BY groups rows that have the same values in specified columns.
	- It is commonly used with aggregate functions to summarize data.
	- Every non-aggregated column in the SELECT statement must appear in GROUP BY.
	- GROUP BY always comes after the FROM clause and before HAVING or ORDER BY.
	- It helps in generating meaningful reports such as total sales per region,
	  number of employees per department, or average salary per job role.
	
	Difference:
	  GROUP BY → groups rows based on column values
	           → used with aggregate functions to summarize data
	  HAVING   → filters groups after grouping
	           → supports aggregate functions for conditions
	
	Syntax:
	SELECT column_name, AGG_FUNCTION(column_name)
	FROM table_name
	GROUP BY column_name;
	
	Example:
	Find total sales per region:
	SELECT region, SUM(amount)
	FROM SalesData
	GROUP BY region;
	
	Notes:
	- GROUP BY can be applied on one or multiple columns.
	- ORDER BY can be used after GROUP BY to sort grouped results.
	- GROUP BY is essential for data summarization and reporting.
*/


