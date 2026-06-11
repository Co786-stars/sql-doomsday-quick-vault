-- IN THIS MODULE WE ARE DISCUSS ABOUT JOIN FUNCTION ONLY INTRODUCTIONS OR NOTHING ?

/*
1. What is JOIN ?
   JOIN is a SQL operation that combines columns from one or more tables based on the values of common 
   columns between them. 

   JOIN operation is one of the most powerful features of SQL and is fundamental to relational 
   database systems. 
   
   JOIN clause allows you to retrieve data from multiple tables in a single query, based on a logical 
   relationship (or a common field) between the tables.	
   
   
2. Why JOIN is important ?
   Normalization: 
   Databases are often normalized to reduce redundancy this means data is split into multiple tables. 
   JOIN clause allow us to reassemble this data when needed.

   Efficiency: 
   JOINs delegate data combination to the database engine, reducing application-side processing 
   and improving overall query performance.
	
   Complex Queries: 
   Many business questions require data from multiple tables. 
   JOINs make it possible to answer these questions in a single query.



4. Define the Type of JOIN ?
   There are the many type of JOIN in SQL that given below 
   INNER JOIN
   LEFT OUTER JOIN (or LEFT JOIN)
   RIGHT OUTER JOIN (or RIGHT JOIN)
   FULL OUTER JOIN (or FULL JOIN)
   CROSS JOIN
   SELF JOIN (a special case of JOIN)
   
   Note : -
   NATURAL JOIN 
   EQUI JOIN vs. NON-EQUI JOIN (based on the condition)

   
5. Claffication of JOINS : -
    SQL JOINS
	├── INNER JOIN (EQUI-JOIN)
	├── OUTER JOIN
	│   ├── LEFT OUTER JOIN
	│   ├── RIGHT OUTER JOIN
	│   └── FULL OUTER JOIN
	├── CROSS JOIN (Cartesian Product)
	└── SPECIAL FORMS
	    ├── SELF JOIN
	    ├── NATURAL JOIN
	    └── THETA JOIN

5. What is clause and command in SQL ?
   A clause is a part of an SQL statement that performs a specific task. 
   It usually contains keywords and expressions that help define the logic of the query.
   Example: WHERE, GROUP BY, ORDER BY are all clauses.

   Command in SQL:
   A command is a keyword that initiates an SQL statement and defines its purpose.
   Example: SELECT, INSERT, UPDATE, DELETE are SQL commands.

   Note : - clause/command   
   If it can be executed as a complete SQL statement → COMMAND
   If it needs to be part of another statement → CLAUSE

   


  Implicit Join Syntax (Old/ Method) : -  (without using JOIN clause)
  When column name is the same in both tables, we use TableName.ColumnName to access the specific 
  column from a particular table. This helps avoid ambiguity and ensures accurate data retrieval
  
  Syntax:
  SELECT * FROM tableName1, tablename2 
  WHERE condition;
  
  Syntax:
  SELECT tableName1.colname, tableName2.colname 
  FROM tableName1, tableName2
  WHERE tableName1.colname = tableName2.colname;
	

  
  
  Explicit Join Syntax (Modern Method) : - (using JOIN clause )
  JOIN clause is use to join the two different column from different table. why it is call as clause?
  because JOIN must be the part of larger statment that's why it call as clause not command in SQL.
  Syntax:
  SELECT * FROM tableName1
  JOIN tableName2 
  ON conditionl_statment;
  
  Syntax:
  SELECT col1, col2 FROM tableName2
  JOIN tableName1
  ON tableNmae.colname1 = tableNamecolname2;
  
  Syntax:
  SELECT * FROM table1 
  JOIN tableName2 ON condition1
  JOIN tableName3 ON condition2
  JOIN tableName4 ON condition3;
  


  
  INNER JOIN :
  JOIN rows when data is a match in both tables if data is not match then row is not included means 
  returns only those rows that have matching values in both tables.
  
  syntax : -
  SELECT * FROM tableName1
  INNER JOIN tableName2 ON conditions;

  syntax : -
  SELECT column_list
  FROM Table1
  INNER JOIN Table2 ON Table1.common_column = Table2.common_column;
  
  syntax : -
  SELECT aliasname1.colname, aliasname2.colname
  FROM tableName1 as aliasname1
  JOIN tableName2 as aliasname2
  ON aliasname.col1 = aliasname.col2





  OUTER JOIN :
  OUTER JOIN in SQL is a relational operation that merges rows from two tables based on a specified 
  condition, while preserving unmatched rows from one or both sides.

  There are three variants:
  LEFT OUTER JOIN  : Keeps all rows from the left table.
  RIGHT OUTER JOIN : Keeps all rows from the right table.
  FULL OUTER JOIN  : Keeps all rows from both tables.

  LEFT JOIN (LEFT OTUER JOIN) :
  JOIN all rows from left table, and matched rows from right table. If data is not match
  then we get left table rows with NULL for columns from right table.
  
  syntax :- 
  SELECT * FROM tableName1
  LEFT JOIN tableName2
  ON conditions;
  
  syntax : -
  SELECT * FROM tableName1 AS aliasname1
  LEFT JOIN tableName2 AS aliasname2 
  ON aliasname1.colname = aliasname2.colname

  
  RIGHT JOIN (RIGHT OUTER JOIN) :
  JOIN all rows from right table, and matched rows from left table. means this is opposite of LEFT 
  JOIN. If data is not match then we get right table rows with NULL for columns from left tabled
 
  syntax :- 
  SELECT * FROM tableName1
  RIGHT JOIN tableName2
  ON conditions;

  syntax : -
  SELECT * FROM tableName1 AS aliasname1
  RIGHT JOIN tableName2 AS aliasname2 
  ON aliasname1.colname = aliasname2.colname


  FULL JOIN (FULL OUTER JOIN)
  JOIN rows when there is a match in either left or right table unmatched rows will show up with NULL 
  here there's no match.
  
  syntax :- 
  SELECT * FROM tableName1
  FULL JOIN tableName2
  ON conditions;

  syntax : -
  SELECT * FROM tableName1 AS aliasname1
  FUll JOIN tableName2 AS aliasname2 
  ON aliasname1.colname = aliasname2.colname


 

 
  CROSS JOIN (Cartesian Product) :-
  CROSS JOIN in SQL combines every row from the first table with every row from the second table.
  It creates a big table with all possible combinations of rows from both tables.

  syntax : -
  SELECT * FROM tableName1
  CROSS JOIN tableName2; 

  syntax : -
  SELECT colname1, colname2
  FROM tableName1
  CROSS JOIN tableName2;





 
  SPECIAL FORMS : -
  Special forms of JOIN are unique types of SQL joins that go beyond the basic INNER, OUTER, 
  and CROSS joins they are used for specific situations like comparing rows within the same 
  table, joining automatically by column names, or using custom conditions.
 
  There are three special forms of JOIN : - 
  SELF JOIN , NATURAL JOIN  , THETA JOIN 

 
  SELF JOIN : - 
  It's just a concept where we join a table to itself using different clause like JOIN, INNER, LEFT etc.
  there is no 'SELF JOIN' keyword in SQL.
  
   => SELF JOIN looks like a regular JOIN, but there is one key difference:
 	  It performs the join operation on the same table itself, using aliases.
   
   => When only one table is used in a join operation (with aliases), it is called a SELF JOIN. 
	  If different tables are used, it is a regular JOIN
	  
	  Syntax : 
	  SELECT columns
	  FROM table_name alias1
	  [JOIN_TYPE] JOIN table_name alias2 
		  ON alias1.column = alias2.column
	  [WHERE condition];
	
	
	  syntax : 
	  SELECT s1.name, s2.name
	  FROM "Students" s1									--  note : tablename is same
	  JOIN "Students" s2 ON s1.class_id = s2.class_id		--  note : tablename is same
	  WHERE s1.student_id <> s2.student_id;         





 NATURAL JOIN :  
 NATURAL JOIN use to automatically joins two tables using columns that have the same name 
 and datatype. It doesn't require an ON clause because it implicitly matches all columns 
 with identical names.

  syntax : -
  SELECT columns
  FROM table1 
  NATURAL [JOIN_TYPE] table2;

  syntax :-
  SELECT colname1, colname2
  FROM tableName1
  NATURAL JOIN tableName2;

  syntax : -
  SELECT colname1, colnamr2
  FROM tableName1
  NATURAL RIGHT JOIN tableName2

  



 THETA JOIN :
 Theta Join is any JOIN operation that uses comparison operators other than equality in the ON 
 condition. 
 
 It allow to joining two tables using a custom condition — not just equality.
 means Joins with operators like <, >, or !=.
 
 The name "theta" comes from relational algebra where θ represents any comparison operator.
 there is no keyword 'THETA JOIN' like 'SELF JOIN' - both are concepts, not SQL keywords.
 
 syntax :
 SELECT columns
 FROM table1 
 [JOIN_TYPE] JOIN table2 
	ON table1.column θ table2.column;


 syntax :
 SELECT *
 FROM "Students" 
 JOIN "Enrollments" 
	ON "Students".age > EXTRACT(MONTH FROM "Enrollments".enrollment_date);



6. EQUI JOIN vs. NON-EQUI JOIN (based on the condition) ?
   
   INNER JOIN is divided into two categories based on the condition used:
   EQUI JOIN , NON-EQUI JOIN 
	
	=> EQUI JOIN: Uses equality operator (=) in ON condition
	   syntax :
	   SELECT * FROM table1
	   [JOIN TYPE] table2
	   		ON table1.column = table2.column
	   
	=> NON-EQUI JOIN: Uses other operators (<, >, <=, >=, !=, BETWEEN)
	   syntax:
	   SELECT * FROM table1
	   [JOIN TYPE] table2
	   		ON table1.column > table2.column

			   
*/

