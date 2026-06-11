



-- GROUP BY
/*
	GROUP BY : -
	
>	GROUP BY is used to arrange identical data into groups and mostly used with aggregate functions 
	to perform calculations on each group. ex : MAX, MIN, COUNT, AVG, SUM etc.. 
	 
	Syntax : -	
	SELECT column1, SUM(column2) FROM YourTableName
	GROUP BY column1;
	
	SELECT column1, COUNT(column2) FROM YourTableName
	GROUP BY column1;
	ORDER BY column1 ASC;
	
	#____________________________________

	HAVING : -
	
> 	HAVING clause is used to filter groups based on a condition, and applied after the GROUP BY clause
	
	Syntax : -
	
	SELECT column1, SUM(column2) 
	FROM YourTableName
	GROUP BY column1
	HAVING column1 condition

	SELECT column1 AS c1, SUM(column2)
	FROM YourTableName
	GROUP BY c1
	HAVING c1 condition 
*/


