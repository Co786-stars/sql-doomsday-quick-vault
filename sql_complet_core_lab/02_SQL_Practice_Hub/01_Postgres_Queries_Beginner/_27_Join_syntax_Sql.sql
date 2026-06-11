-- To perform JOIN clause we need to create a two or more then two table with similar column & value.

-- table : 1st
CREATE TABLE "Students"(
	student_id VARCHAR(20),
	name VARCHAR(30),
	age INT,
	class_id VARCHAR(30)
);


-- table : 2nd
CREATE TABLE "Classes"(
	class_id VARCHAR(30),
	class_name VARCHAR(40),
	teacher_id VARCHAR(35)
);


-- table : 3rd
CREATE TABLE "Teachers"(
	teacher_id VARCHAR(20),
	teacher_name VARCHAR(35),
	subject VARCHAR(45)
);


-- table : 4th
CREATE TABLE "Enrollments"(
	student_id VARCHAR(30),
	subject VARCHAR(40),
	enrollment_date DATE
);



-- insert the values table :1st
INSERT INTO "Students" (student_id, name, age, class_id) VALUES	
('STU001', 'Aarav Mehta', 15, 'CLS101'),
('STU002', 'Isha Verma', 16, 'CLS102'),
('STU003', 'Rohan Singh', 14, 'CLS101'),
('STU004', 'Sneha Kapoor', 17, 'CLS103'),
('STU005', 'Aditya Sharma', 15, 'CLS102'); 

-- insert the value in table : 2nd
INSERT INTO "Classes" (class_id, class_name, teacher_id) VALUES
('CLS101', 'Mathematics Grade 10', 'TCH001'),
('CLS102', 'Science Grade 10', 'TCH002'),
('CLS103', 'English Grade 10', 'TCH003'),
('CLS104', 'Social Studies Grade 10', 'TCH004');


-- insert the value in table :3rd
INSERT INTO "Teachers" (teacher_id, teacher_name, subject) VALUES
('TCH001', 'Mr. Rajeev Menon', 'Mathematics'),
('TCH002', 'Ms. Kavita Joshi', 'Science'),
('TCH003', 'Mrs. Anjali Desai', 'English'),
('TCH004', 'Mr. Arvind Kumar', 'Social Studies');


-- insert the value in table : 4th
INSERT INTO "Enrollments" (student_id, subject, enrollment_date) VALUES
('STU001', 'Mathematics', '2025-07-01'),
('STU002', 'Science', '2025-07-02'),
('STU003', 'Mathematics', '2025-07-03'),
('STU004', 'English', '2025-07-04'),
('STU005', 'Science', '2025-07-05');

-- 🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤🖤 --


SELECT * FROM "Students"; 		-- try to check the table data of "Student" 
SELECT * FROM "Classes"; 		-- try to check the table data of "Classes"
SELECT * FROM "Enrollments"; 	-- try to check the table data of "Enrollments"
SELECT * FROM "Teachers"; 		-- try to check the table data of "Teachers"




-- Implicit Join Syntax (Old Method)
-- if same colname is exist in both then use 'tableName.colname' 
SELECT * FROM "Students", "Classes" 
WHERE "Students".class_id = "Classes".class_id;  


SELECT "name", "Classes".class_id 
FROM "Classes", "Students"
WHERE "Students".class_id =  "Classes".class_id;




-- Explicit Join Syntax (Modern Method) : - (using JOIN clause )
-- JOIN (join the two table)
--  if want to compare different column use this 
SELECT * FROM "Classes"
JOIN "Students"
ON student_id = name;   


--  if want to compare similar column use this 
SELECT * FROM "Classes"
JOIN "Students"
ON "Classes".class_id = "Students".class_id


-- use different conditions
SELECT * FROM "Students"
JOIN "Enrollments"
ON age > EXTRACT(MONTH FROM "enrollment_date");


SELECT name, student_id 
FROM "Students" 
JOIN "Classes"
ON "Students".class_id = "Classes".class_id;





-- INNER JOIN  :- ()
-- Returns only the rows that have matching values in both tables.
SELECT * FROM "Students"		
INNER JOIN "Classes"    		
ON "Classes".class_id = "Students".class_id;

SELECT code.class_id, client.class_id 
FROM "Students" AS client
INNER JOIN "Classes" AS code
ON client.class_id = code.class_id;





-- OUTER JOIN : 
-- there are three type of outer join : (LEFT, RIGHT, FULL) JOIN
-- When we use variants outer join then some time it can't comparable so we insert 
-- firstly different value to Students table

-- now some value of class_id not similar in both table. (by inserting we see difference b/w 
-- variant of the outer joins. the every value of class_id is not same just like before .)
INSERT INTO "Students"(student_id, name, age, class_id)
	 VALUES('STU993', 'NoClass Kid', 11, 'CLS999'),   -- different value is inserting in Students
	       ('STU995', 'NoClass Kid', 12, 'CLS1000'), 
		   ('STU991', 'NoClass Kid', 15, 'CLS1111'),
		   ('STU992', 'NoClass Kid', 17, 'CLS2222');


-- if the value similar in both col then table is joint. 
SELECT * FROM "Students"
JOIN "Classes"
ON "Students".class_id = "Classes".class_id; 	


-- LEFT OUTER JOIN (LEFT JOIN)
-- take the row from left side
SELECT * FROM "Students"
LEFT OUTER JOIN "Classes"
ON "Students".class_id = "Classes".class_id;	
-- Steps to understand :
-- 👉 Take all the rows from the first table (left side).
-- 👉 Then, try to find matching rows from the second table (right side).
-- 👉 If there is a match, show both together.
-- 👉 If there is no match, still show the row from the first table, but put NULL (empty) 
--    for the missing data from the second table.


-- RIGHT OUTER JOIN (RIGHT JOIN)
-- take the row from right side
SELECT * FROM "Classes"
RIGHT OUTER JOIN "Students"
ON  "Classes".class_id = "Students".class_id;
-- Steps to understand : -- if dont understand then sift the table name
-- 👉 Take all the rows from the second table (right side).
-- 👉 Then, try to find matching rows from the first table (left side).
-- 👉 If there is a match, show both together.
-- 👉 If there is no match, still show the row from the second table, but put 


-- FULL OUTER JOIN (FULL JOIN)
-- to check the difference how it work sift the name of table 
SELECT * FROM "Students"                                    -- "Classes"
FULL OUTER JOIN "Classes"                                   -   "Student"
ON "Students".class_id = "Classes".class_id;
-- Steps to understand :
-- 👉 Take all the rows from the first table (left side).
-- 👉 Take all the rows from the second table (right side).
-- 👉 Try to match rows using a common column.
-- 👉 If there is a match, show both together.
-- 👉 If there is no match, still show the row from whichever table has data, and put NULL 
--    (empty) for the missing side.







-- CROSS JOIN (Cartesian Product) :-
   SELECT * FROM "Students"
   CROSS JOIN "Classes";

   SELECT "Students".class_id FROM "Students"
   CROSS JOIN "Classes";
      -- Steps to understand :
-- 👉 Take every row from the first table
-- 👉 Match it with every row from the second table
-- 👉 It makes all possible combinations of rows from both tables

-- Alternatively, use (older Syntax of cross join)
   SELECT * FROM "Students", "Classes";  





-- SPECIAL FROM :
-- self join means -> join the table itself via using other clause like JOIN , LEFT JOIN etc..     
-- SELF JOIN : (Operate on single table)

-- Find pairs of students who are in the same class
SELECT s1.name AS student1, s2.name AS student2, s1.class_id
FROM "Students" s1
JOIN "Students" s2 ON s1.class_id = s2.class_id
WHERE s1.student_id < s2.student_id;  -- Avoids duplicate pairs


-- Find students who are the same age
SELECT s1.name AS student1, s2.name AS student2, s1.age
FROM "Students" s1
JOIN "Students" s2 ON s1.age = s2.age
WHERE s1.student_id < s2.student_id;


-- NATURAL JOIN 
SELECT * FROM "Students"
NATURAL JOIN "Classes";

SELECT * FROM "Student"
NATURAL LEFT JOIN "Classes";

SELECT * FROM "Students"
NATURAL RIGHT JOIN "Classes";

SELECT * FROM "Students"
NATURAL FULL JOIN "Classes";




-- THETA JOIN (custom/ mannual way to join the table)
-- there is no keyword 'THETA JOIN' like 'SELF JOIN' - both are concepts, not SQL keywords.
SELECT *
FROM "Students" 
JOIN "Enrollments" 
    ON "Students".age > EXTRACT(MONTH FROM "Enrollments".enrollment_date);




