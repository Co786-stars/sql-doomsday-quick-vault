-- select data value from table
SELECT *
FROM demo_users;


-- filters the groups after grouping
SELECT dept, COUNT(dept)
FROM demo_users
GROUP BY dept
HAVING COUNT(dept) > 2;


-- filter the groups after grouping the salary
SELECT salary 	  	AS emp_salary,
	   SUM(salary)  AS total_salary
FROM demo_users
GROUP BY salary
HAVING SUM(salary) > 100000;



/*
	Definition:
	The HAVING clause is used in SQL to filter groups created by the GROUP BY clause.
	While the WHERE clause filters individual rows before grouping, HAVING filters the
	aggregated results after grouping has been performed.
	
	Key Points:
	- HAVING is always used together with GROUP BY.
	- WHERE filters rows; HAVING filters groups.
	- Aggregate functions like SUM(), COUNT(), AVG(), MIN(), and MAX can be used inside HAVING.
	- HAVING allows you to apply conditions on aggregated values (e.g., total salary > 100000).
	- It is useful when you want to display only specific groups that meet certain criteria.
	
	
	Difference: 
	  WHERE  → filters rows before grouping
			 → cannot use aggregate functions (SUM, COUNT, AVG, MAX, MIN)	 
	  HAVING → filters groups after grouping
			 → is used only with GROUP BY and supports aggregate functions
	
	
	Syntax:
	SELECT column_name, AGG_FUNCTION(column_name)
	FROM table_name
	GROUP BY column_name
	HAVING AGG_FUNCTION(column_name) condition;
	
	Example:
	Find departments with more than 2 employees:
	SELECT dept, COUNT(*)
	FROM demo_users
	GROUP BY dept
	HAVING COUNT(*) > 2;
	
	Notes:
	- HAVING is evaluated after GROUP BY.
	- Every non-aggregated column in SELECT must appear in GROUP BY.
	- HAVING is essential when filtering based on aggregated results.
*/