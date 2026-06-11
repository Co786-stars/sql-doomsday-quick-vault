SELECT * FROM Home_remedies;

-- -- insert a single row (table_name = all_value)
INSERT INTO Home_remedies
VALUES (
  '10010', 'venila', 'capcus', 'suga', 'soap', 5, 'wip12@gmail.com', '95123095'	
);



-- insert a single row (column = value)
INSERT INTO Home_remedies (
  id_num, customer_name, green_veg, dry_fruits, cosmetic_product,
  number_of_items, customer_email, phone_number
)
VALUES (
  '10002', 'Wizard', 'salad', 'cashew', 'soap', 4, 'wiz12@gmail.com', '95123091'
);


-- insert a multipal row in one command (column = value)
INSERT INTO Home_remedies (
	id_num, customer_name, green_veg, dry_fruits, cosmetic_product,
	number_of_items, customer_email, phone_number
)
VALUES 
	 ( '10003', 'vankatshwer', 'greenleaf', 'almonds', 'washing power', 5, 
   		'vankst123@.come', '923414'),
	  ('10004', 'meera', 'spinach', 'cashew', 'face cream', 3, 
	    'meera456@gmail.com', '9812345678'),
	  ('10005', 'rahul', 'broccoli', 'walnuts', 'shampoo', 4, 
	    'rahul789@yahoo.com', '9123456789'),
	  ('10006', 'anita', 'cabbage', 'pistachio', 'body lotion', 2, 
	    'anita321@outlook.com', '9988776655'),
	  ('10007', 'suresh', 'fenugreek', 'raisins', 'toothpaste', 6, 
	    'suresh007@mail.com', '9876543210'),
	  ('10008', 'priya', 'lettuce', 'dates', 'sunscreen', 5, 
	    'priya888@rediffmail.com', '9001122334'),
	  ('10009', 'arjun', 'kale', 'hazelnuts', 'conditioner', 3, 
	    'arjunx@live.com', '9112233445'
		);


-- Explanation
/*
INSERT command is used to add new rows/records into a table in PostgreSQL. 
It's one of the fundamental DML (Data Manipulation Language) commands.

Syntax : -

INSERT INTO TableName
VALUES (all_values);

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

*/

