SELECT *
FROM users;

SELECT full_name
FROM users;

SELECT full_name, email
FROM users;

-- choose the different values (no duplicate)
SELECT DISTINCT joining_date
FROM users;

-- count distinct value (no duplicate count)
SELECT COUNT(DISTINCT joining_date)
FROM users;


-- filtring the row
SELECT full_name 
FROM 
WHERE full_name ='Vikram Sinha';

-- ________________________________________________________________________________________________________________
SELECT *
FROM users;


-- Inserting the row in users table.
INSERT INTO users(
	emp_id,
	full_name,
	email,
	project_name,
	department,
	password_hash,
	joining_date,
	emp_salary
)
VALUES (
	11,
	'Hauster Roy',
	'Hr45cO@.Zohomail.in',
	'project_name',
	'TecMine',
	'K%pO$^93@5',
	'2026-03-01',
	12280.30
);


-- ______________________________________________________________________________________________________
-- Creating the new_table
CREATE TABLE sales(
		id SERIAL PRIMARY KEY,
		product VARCHAR(30) NOT NULL,
		category VARCHAR(30) NOT NULL,
		amount NUMERIC(10, 2),
		sale_date DATE
);



-- insert value
INSERT INTO sales (
	id,
	product,
	category,
	amount,
	sale_date
)
VALUES(1, 'Laptop', 'Electronics', 1200, '2026-03-01'),
	  (2, 'Phone', 'Electronics', 800, '2026-03-02'),
	  (3, 'Chair', 'Furniture', 150, '2026-03-02'),
	  (4, 'Desk', 'Funiture', 300, '2026-03-03'),
	  (5, 'Laptop', 'Electronics', 1000, '2026-03-03');


INSERT INTO invoices
VALUES (
	2342,
	'Alankar',
	20000,
	'paid',
	'05/29/2005'	
); -- insert data using sorter 



INSERT INTO invoices (
	invoice_id,
	customer_name,
	amount,
	paid_status,
	due_date
)
VALUES (
	4322,
	'lovkush',
	10050,
	'unpaid',
	'03-16-2024'
	
); -- single record using standard formating 


INSERT INTO invoices (
	invoice_id,
	customer_name,
	amount,
	paid_status,
	due_date
)
VALUES
	(4021, 'kushwanz', 10050.00, 'Unpaid', '2024-03-16'),
    (4323, 'Aditya Raj', 2500.75, 'Pending', '2024-04-01'),
    (4324, 'Ravi Kumar', 780.50, 'Paid', '2024-02-28'),
    (4325, 'Sneha Sharma', 12000.00, 'Pending', '2024-05-10'),
    (4326, 'Priya Singh', 450.00, 'Unpaid', '2024-03-25'),
	(4531, 'Rahul Mehta', 5000.00, 'paid', '2024-06-01');  -- by default automatacly tak epending status
 							     				 -- inserting multipal record standared formating
												   
--________________________________________________________________________________________________________



-- select data from table that is under ncrycore database --> WHERE
SELECT *
FROM invoices;


SELECT invoice_id,
	   amount,  
	   customer_name
FROM invoices;


SELECT invoice_id,
	   amount,
	   customer_name
FROM invoices
WHERE amount = 20000;


SELECT *
FROM invoices;


SELECT * 
FROM invoices
WHERE customer_name IN ('Alankar', 'lovkush');



SELECT product,
	   category,
	   sale_date
FROM sales
WHERE category IN ('Electronics');


SELECT *
FROM invoices;



SELECT
	 customer_name,
	 amount,
	 paid_status,
	 due_date
FROM invoices
WHERE paid_status = 'paid' 
   OR paid_status = 'unpaid'
   OR paid_status ='Paid';


SELECT custome
FROM invoices;



SELECT *
FROM --enrollment, 
	 --invoices,
	 --products,
	 sales;


SELECT customer_name AS client_name,
	   amount AS total_amount,
	   paid_status AS status,
	   due_date AS overdue_date
FROM invoices
WHERE customer_name IN ('Ravi Kumar', 'Sneha Sharma','Priya Singh');
-- WHERE client_name = 'Aditya Raj'; -- we can't access directly value using alias name
-- WHERE customer_name ='Aditya Raj'; -- we neet to give original column name 



SELECT *
FROM sales
WHERE product IN ('Laptop', 'Chair', 'Desk');



SELECT *
FROM invoices
WHERE amount > 5000 
   OR amount = 2500.75;



SELECT product, 
	   amount, 
	   category
FROM sales 
WHERE  id < 3 
	OR id = 5;


SELECT * FROM 
SELECT id, product, amount
FROM sales
WHERE product = 'Chair' AND Product = 'Phone'; -- nothing show


-- Industry‑Standard SQL Formatting
-- ARITHMETIC OPERATORS +, -, *, /, %

-- +
SELECT product,
       amount AS old_price,
       amount + 200 AS price
FROM sales;

-- *
SELECT full_name,
	   email,
	   department,
	   password_hash,
	   emp_salary AS old_salary,
	   emp_salary*2 AS new_salary
FROM users;


-- -
SELECT product,
	   category,
	   amount AS exact_salary,
	   amount - 100 AS deducted_salary
FROM sales;


-- /
SELECT full_name,
	   project_name,
	   department,
	   emp_salary AS inhand_salary,
	   emp_salary/2 AS deducted_salary,
	   ROUND(emp_salary/2, 2) AS deducted_salary -- r
FROM users;


-- %
SELECT id AS count_num,
       amount AS g_value,
	   amount%3 AS reminder
FROM sales;


SELECT COUNT(emp_salary) AS tcount
FROM users
WHERE emp_salary%4 = 0;




