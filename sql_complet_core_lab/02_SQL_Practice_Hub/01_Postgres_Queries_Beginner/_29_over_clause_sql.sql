
/*

OVER clause in SQL is used with window functions to perform calculations across a set of table 
rows related to the current row, without collapsing them into a single result.

syntax :-
SELECT 
  column1,
  column2,
  SUM(column3) OVER (PARTITION BY column1 ORDER BY column2) AS running_total
FROM table_name;

*/