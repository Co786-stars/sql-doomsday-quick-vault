SELECT *
FROM appuser;

-- inserting the multipal item
INSERT INTO appuser (
	user_id,
	user_name,
	email,
	signup_date
)
VALUES 
     (1001, 'cirstino', 'xyz243@gmail.com', '2005/06/28'),
	 (1002, 'wikjardo', 'abc432@gmail.com', '2003/03/02'),
	 (1003, 'munchine', 'pqr345@gmail.com', '2008/05/23');



-- insert single data 
INSERT INTO appuser (
	user_id,
	user_name,
	email,
	signup_date
)
VALUES (
		104,
		'winjard',
		'ptr54@gmail.com',
		'2005/01/28'
);


-- insert data directly in sort way
INSERT INTO appuser 
VALUES (
	1004,
	'lizards',
	'email@gmail.com',
	'2025/08/03'
)

-- selecting values/data *-+/%
SELECT *
FROM appuser;


SELECT user_id,
	   user_id+300 AS amount,
	   user_name AS full_name
FROM appuser;


SELECT *
FROM users;


SELECT full_name,
	   email AS emp_Email,
	   project_name AS emp_project,
	   emp_salary*10 AS new_salary,
	   emp_salary AS old_salary
FROM users;



SELECT full_name,
	   emp_salary,
	   (emp_salary+300)%2 AS changes
FROM users


SELECT *
FROM appuser
WHERE email = 'xyz243@gmail.com';

SELECT *
FROM appuser
WHERE email != 'xyz243@gmail.com';


SELECT *
FROM appuser
WHERE user_id > 1002;

SELECT *
FROM appuser
WHERE user_id <= 1003;


SELECT *
FROM appuser
WHERE 	user_id >= 104
	AND user_id <  1002;


SELECT *
FROM users
WHERE 	 department = 'Business Analytics'
	  OR department = 'Cloud Engineering';


SELECT *
FROM users
WHERE 	NOT (department = 'cloud Engineering')
	AND NOT (emp_salary < 19500);
--❌ NOT was placed before column names instead of conditions
--❌ AS cannot be used in WHERE
--❌ SQL conditions must be written as expressions, not aliases

SELECT *
FROM users;


SELECT full_name AS emp_name,
	   email AS emp_email,
	   emp_salary AS _salary_
FROM users;


SELECT *
FROM appuser;


SELECT user_id AS unique_id,
	   email AS myemail_id,
	   signup_date AS Date_of_joining
FROM appuser
WHERE 	NOT user_id = 1004
	AND NOT email = 'ptr54@gmail.com';


SELECT *
FROM appuser;


INSERT INTO appuser (
	user_id,
	user_name,
	email,
	signup_date
)
VALUES (
	1005,
	'xyzpr',
	'topk432@gmail.com',
	'2003-06-28'
);

SELECT *
FROM appuser
WHERE user_id = 1005;

-- direct entry
INSERT INTO appuser
VALUES (
	1006,
	'ktryp',
	'poprtrk321@gmail.com',
	'2006-08-30'
);


SELECT *
FROM appuser
WHERE user_id = 1006;


-- bitwise operator and or xor (&, |, #)
SELECT 5 & 3;
SELECT 5 | 3;
SELECT 5 # 3;
SELECT 5 >> 3;
SELECT 5 << 3;



-- SET OPERATORS UNION, UNION ALL, INTERSECT, EXCEPT
SELECT email AS email_id
FROM users
UNION
SELECT email AS email_id
FROM appuser;



SELECT  full_name AS employ_name
FROM users
UNION ALL
SELECT user_name AS employ_name
FROM appuser;

SELECT full_name AS employ_name
FROM users
INTERSECT
SELECT user_name AS employ_name
FROM appuser;

SELECT LOWER(full_name) AS employ_name
FROM users
EXCEPT
SELECT LOWER(user_name) AS employ_name
FROM appuser; -- return query from first that not present in second 


SELECT email AS email_id
FROM appuser
EXCEPT
SELECT email AS email_id
FROM users
ORDER BY email_id ASC;

-- String operator || (string Concatenation operator)
SELECT 'Hello' || 'World';

CREATE TABLE students (
	first_name 	VARCHAR(20) NOT NULL,
	last_name 	VARCHAR(20),
	roll 		INT NOT NULL UNIQUE DEFAULT NULL,
	student_id  INT NOT NULL PRIMARY KEY,
	contact_num VARCHAR(20) NOT NULL UNIQUE
);

INSERT INTO students (
	first_name,
	last_name,
	roll,
	student_id,
	contact_num
)
VALUES
	('wizard',   'sayraj',   123, 1001, '9896248136'),
	('hyyli',    'yang',     124, 1002, '6348579625'),
	('arjun',    'singh',    125, 1003, '9876543210'),
	('riya',     'sharma',   126, 1004, '9123456780'),
	('kabir',    'verma',    127, 1005, '9988776655'),
	('meera',    'joshi',    128, 1006, '9090909090'),
	('sahil',    'khan',     129, 1007, '9812345678'),
	('tanya',    'kapoor',   130, 1008, '7001234567'),
	('dev',      'patel',    131, 1009, '8800112233'),
	('anaya',    'gupta',    132, 1010, '9900887766');

SELECT *
FROM students
ORDER BY student_id;

SELECT first_name || last_name 
	AS student_name
FROM students;


SELECT first_name || ' ' || last_name
	AS student_name
FROM students;



-- OTHER OPERATOR
SELECT *
FROM students;


SELECT *
FROM students
WHERE roll IN (123);




