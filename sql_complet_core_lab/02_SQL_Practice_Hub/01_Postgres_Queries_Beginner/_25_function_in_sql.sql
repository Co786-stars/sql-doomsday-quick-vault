CREATE TABLE book(
		name VARCHAR(30) NOT NULL,
		price INT NOT NULL,
		Purching DATE
);

SELECT * FROM book;
INSERT INTO book(name, price, purching)
	VALUES('book1',  20, '2023-10-10'),
		  ('book2',  50, '2021-09-10'),
		  ('book3',  30, '2025-05-08'),
		  ('book4',  60, '2023-03-12'),
		  ('book5',  60, '1991-12-15'),
		  ('book6',  30, '1993-11-30'),
		  ('book7',  20, '1995-11-20'),
		  ('book8',  60, '2023-12-22'),
		  ('book9',  20, '2022-08-04'),
		  ('book10', 80, '2026-04-10'),
		  ('book11', 90, '2023-03-17'),
		  ('book12', 10, '2022-02-19'),
		  ('book13', 100,'2021-11-29'),
		  ('book14', 40, '2025-01-23'),
		  ('book15', 300,'1999-09-24'),
		  ('book16', 80, '1990-06-25'),
		  ('book17', 50, '2023-05-06'),
		  ('book18', 20, '2021-03-23'),
		  ('book19', 60, '2025-04-09');


-- DATE AND TIME FUNCTIONS : -

-- CURRENT_DATE
SELECT CURRENT_DATE;
SELECT * FROM CURRENT_DATE; 


-- NOW()
SELECT NOW() ;
SELECT * FROM NOW();



-- EXTRACT()
SELECT EXTRACT(YEAR FROM CURRENT_DATE);
SELECT EXTRACT(MONTH FROM CURRENT_DATE);
SELECT EXTRACT(DAY FROM CURRENT_DATE);

SELECT purching FROM book;
SELECT EXTRACT(YEAR FROM purching) FROM book
ORDER BY purching;


-- AGE()
SELECT AGE('2025-10-24', '2010-11-24');
SELECT AGE('2024-10-10', '2010-10-10');

SELECT  AGE('2025-10-10', purching) FROM book;

SELECT AGE('1990-01-01', purching) FROM book
WHERE "name" = 'book3';




-- TO_CHAR()
SELECT TO_CHAR(DATE '2025-10-30', 'YYYY-MM-DD');
SELECT TO_CHAR(TO_DATE('20-10-2025', 'DD-MM-YYYY'), 'YYYY-MM-DD');
SELECT TO_CHAR(TO_DATE('20-10-2025', 'DD-MM-YYYY'), 'YYYY-Month-DD');
SELECT TO_CHAR(TO_DATE('20-10-2025', 'DD-MM-YYYY'), 'YYYY-Mon-DD');
SELECT TO_CHAR(TO_DATE('2025-10-30', 'YYYY-MM-DD'), 'Mon-DD-YYYY');
SELECT TO_CHAR(NOW(), 'Mon-DD-YYYY');


SELECT TO_CHAR(CURRENT_DATE, 'Month DD, YYYY') 
AS formatted_num;   -- Result: 'January  15, 2024'

SELECT TO_CHAR(CURRENT_DATE, 'DY, MM/DD/YY') 
AS long_date;    -- Result: 'MON, 01/15/24'

SELECT TO_CHAR(CURRENT_TIMESTAMP, 'HH24:MI:SS') 
AS short_date;  -- Result: '14:30:25'

SELECT TO_CHAR(CURRENT_TIMESTAMP, 'YYYY-MM-DD HH24:MI:SS') 
AS time_only; -- Result: '2024-01-15 14:30:25'



-- Basic number formatting
SELECT TO_CHAR(1234.56, '9999.99') AS formatted_num;	-- Result: '1234.56'
SELECT TO_CHAR(1234.56, '9,999.99') AS with_comma;		-- Result: '1,234.56'

-- Currency formatting
SELECT TO_CHAR(1234.56, '$9,999.99') AS currency;		-- Result: '$1,234.56'
SELECT TO_CHAR(1234.56, 'L9,999.99') AS local_currency;	-- Result: '$1,234.56'

-- Zero padding
SELECT TO_CHAR(123, '00000') AS padded;					-- Result: '00123'

-- Percentage formatting
SELECT TO_CHAR(0.456, '99.99%') AS percentage;			-- Result: '45.60%'

-- Handling negative numbers
SELECT TO_CHAR(-1234.56, '9,999.99MI') AS negative_num;	-- Result: '1,234.56-'
SELECT TO_CHAR(-1234.56, '9,999.99PR') AS negative_pr;	-- Result: '<1,234.56>'


-- TO_CHAR using Conditions
SELECT * FROM book;
SELECT name,purching,
	CASE name
		WHEN 'book1' THEN TO_CHAR(CURRENT_DATE, 'DD-MM-YYYY')
		WHEN 'book2' THEN TO_CHAR(CURRENT_DATE + INTERVAL '10 days', 'DD-MM-YYYY')
		ELSE TO_CHAR(CURRENT_DATE, 'DY, MM/DD/YYYY')
	 END AS "DATE FORMAT"
FROM book;
-- ---------------------------------------------------------------------------------




-- DATE_PART() 
SELECT DATE_PART('year', CURRENT_DATE);

SELECT DATE_PART('month', NOW());

SELECT DATE_PART('hour', NOW());
SELECT * FROM DATE_PART('month', CURRENT_DATE);

SELECT DATE_PART('year', purching) AS "Year"
FROM book;




-- INTERVAL
SELECT CURRENT_DATE - INTERVAL '10 days';  -- subtract 10 days from current date
SELECT CURRENT_DATE + INTERVAL '10 days';  -- add the next 10 day from current date
SELECT NOW() + INTERVAL '2 days';          -- add the two day of interval from Now -> current date
SELECT INTERVAL '3 hours 3 minutes';       -- add 3hour 3 minutes extra (same value is displayed)
SELECT AGE('2025-10-10', '2000-10-10');    -- simple age si display



-- CURRENT_TIME()
SELECT CURRENT_TIME;
SELECT CURRENT_TIME(0);



-- TO_DATE()
-- TO_DATE(string1, [format_mask], [nls_language])
SELECT TO_CHAR(TO_DATE('03-01-2005', 'DD-MM-YYYY'), 'DD-MM-YYYY'); -- to give format use TO_CHAR
SELECT TO_DATE('1/1/2005', 'DD_MM_YYYY');
SELECT TO_DATE('May 5, 2025 14:30', 'Month DD, YYYY HH24:MI');



/*
-------------------------------------------------------------------------------------------------
CURRENT_DATE 	– ( Returns the current date (without time). )
Syntax : -
SELECT CURRENT_DATE
SELECT * FROM CURRENT_DATE;
-------------------------------------------------------------------------------------------------




-------------------------------------------------------------------------------------------------
NOW() 			– ( Returns the current date and time (timestamp). )
Syntax : -
SELECT NOW() ;
SELECT * FROM NOW();
-------------------------------------------------------------------------------------------------



-----------------------------------------------------------------------------------------------
EXTRACT() 		– ( Similar to DATE_PART, pulls out parts like year or day from a timestamp. )
Syntax : -
SELECT EXTRACT(YEAR FROM CURRENT_DATE);

SELECT EXTRACT(MONTH FROM CURRENT_DATE);

SELECT EXTRACT(DAY FROM CURRENT_DATE);

SELECT EXTRACT(YEAR FROM colname) FROM tableName
ORDER BY colname;
-----------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------
DATE_PART() 	– ( Extracts a specific part (e.g., year, month) from a date/time. )

Syntax : -
SELECT DATE_PART('value', CURRENT_DATE);

Example : -
SELECT DATE_PART('year', CURRENT_DATE);

SELECT DATE_PART('month', NOW());

SELECT DATE_PART('hour', NOW());

SELECT * FROM DATE_PART('month', CURRENT_DATE);

SELECT DATE_PART('year', colname) AS alias_name
FROM tableName;

DATE_PART() values : -
'year', 'month', 'day', 'hour', 'minute', 'second', 'dow' (day of week), 'doy' (day of year), 
'epoch', etc...
-------------------------------------------------------------------------------------------------




-------------------------------------------------------------------------------------------------
CURRENT_TIME   	– ( Returns the current time (without date). )
Syntax : -
SELECT CURRENT_TIME;
SEELCT CURRENT_TIME(0);  --  0 is use to Removes fractional seconds
-------------------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------------------
AGE() 			– ( Calculates the interval between two dates (often used for age). )
Syntax : -
SELECT AGE('2025-10-24', '2010-11-24');

SELECT AGE('2024-10-10', '2010-10-10');

SELECT  AGE('2025-10-10', colname) FROM tableNmae;

SELECT AGE('1990-01-1', colname) FROM tableName
WHERE condition;
-------------------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------------------
INTERVAL 		– ( Represents a duration of time (e.g., '2 days', '3 hours'). )
syntax : -
SEELCT CURRENT_DATE operator INTERVAL interval_value;
SELECT CURRENT_DATE - INTERVAL '10 days';  -- subtract 10 days from current date
SELECT CURRENT_DATE + INTERVAL '10 days';  -- add the next 10 day from current date
SELECT NOW() + INTERVAL '2 days';          -- add the two day of interval from Now -> current date
SELECT INTERVAL '3 hours 3 minutes';       -- add 3hour 3 minutes extra (same value is displayed)
SELECT AGE('2025-10-10', '2000-10-10');    -- simple age si display

INTERVAL values : -  
'year', 'month', 'day', 'hour', 'minute', 'second', 'week', 'decade', 'century', etc..
-------------------------------------------------------------------------------------------------





-------------------------------------------------------------------------------------------------
TO_CHAR() 		– ( Converts date/time or number to a formatted string. )
Syntax : -
TO_CHAR(expression, format_mask)
SELECT TO_DATE('2025-29-12', 'YYY-DD_MM');
SELECT TO_CHAR(NOW(), 'Mon-DD-YYYY');

SELECT TO_CHAR(CURRENT_DATE, 'YYYY-MM-DD') 
AS alias_name;  -- Result: '2024-01-15'

SELECT TO_CHAR(CURRENT_DATE, 'Month DD, YYYY') 
AS alias_name;   -- Result: 'January  15, 2024'

SELECT TO_CHAR(CURRENT_DATE, 'DY, MM/DD/YY') 
AS alias_name;    -- Result: 'MON, 01/15/24'

SELECT TO_CHAR(CURRENT_TIMESTAMP, 'HH24:MI:SS') 
AS alias_name;  -- Result: '14:30:25'

SELECT TO_CHAR(CURRENT_TIMESTAMP, 'YYYY-MM-DD HH24:MI:SS') 
AS alias_name; -- Result: '2024-01-15 14:30:25'




SELECT 
    TO_CHAR(columnName, 'formatMask') AS aliasName,
    TO_CHAR(columnName, 'formatMask') AS aliasName,
    CASE 
        WHEN condition THEN TO_CHAR(columnName, 'formatMask')
        ELSE 'text'
    END AS aliasName
FROM tableName;




SELECT 
    TO_CHAR(order_date, 'Mon DD, YYYY') AS order_date,
    TO_CHAR(total_amount, 'FML999,999.99') AS amount,
    TO_CHAR(tax_amount, '999.00') AS tax,
    CASE 
        WHEN discount_amount > 0 THEN TO_CHAR(discount_amount, '999.99MI')
        ELSE 'None'
    END AS discount
FROM sales_report;
-------------------------------------------------------------------------------------------------




-------------------------------------------------------------------------------------------------
TO_DATE() 		– ( Converts a string to a date using a specified format. )
Syntax : -
TO_DATE(string1, [format_mask], [nls_language])
SELECT TO_CHAR(TO_DATE('03-01-2005', 'DD-MM-YYYY'), 'DD-MM-YYYY'); -- to give format use TO_CHAR
SELECT TO_DATE('1/1/2005', 'DD_MM_YYYY');
SELECT TO_DATE('May 5, 2025 14:30', 'Month DD, YYYY HH24:MI');
-------------------------------------------------------------------------------------------------

*/


