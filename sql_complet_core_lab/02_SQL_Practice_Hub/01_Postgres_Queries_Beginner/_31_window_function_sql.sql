--   WHAT WE NEED TO DISCUSS IN WINDOW FUNCTION : -
-- ➡️FRAME 
-- ➡️ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
-- ➡️ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
-- ➡️RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
-- ➡️PARTITION BY
-- ➡️OVER() with example
-- ➡️ ROW_NUMBER()
-- ➡️ RANK()
-- ➡️ DENSE_ROW()

/*
What is a Window Function?
Window functions perform calculations across a set of table rows related to the current row—without 
collapsing the result like GROUP BY.

ROW_NUMBER():
Assigns a unique number to each row, even if values are equal.
➤ Example: Two students with 90 marks → get row numbers 1 and 2.

RANK():
Same rank for equal values, but skips the next rank(s).
➤ Example: Two students with 90 marks → both get rank 1, next gets rank 3.

DENSE_RANK():
Same rank for equal values, but does NOT skip the next rank.
➤ Example: Two students with 90 marks → both get rank 1, next gets rank 2.

🗣️ Hindi Hint:
ROW_NUMBER → हर row को unique number
RANK → बराबर वालों को same rank, बीच वाला skip
DENSE_RANK → बराबर वालों को same rank, अगला rank continue

*/



-----------------------------------------------------------------------------------------------------------
-- WINDOW FUNCTION PROPER EXAMPLE : -

-- ROW_NUMBER -- Continually reads, does not skip any rank  
SELECT product_name, category, price, 
	ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM sales;



-- RANK -- Assigns same rank to ties, skips subsequent ranks  
SELECT product_name, category, price, 
	RANK() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM sales;



-- DENSE_RANK -- Assigns same rank to ties, does not skip next rank
SELECT product_name, category, price, 
	DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM sales;

-- 
SELECT product_name, category, price,
	SUM(price) OVER(PARTITION BY category ORDER BY price ASC) AS Running_total
FROM sales;

-- 
SELECT product_name, category, price,
	AVG(price) OVER(ORDER BY price ASC) AS Running_total
FROM sales;


-- SIMPLE CONCEPTS WINDOW FUNCTIONS : - 
-----------------------------------------------------------------------------------------------------------

-- Queries : - 
-- Display the Global/Total sum of Quantity in front of last row .
 
 -- simply aggreate function use
SELECT SUM(price) FROM sales;   

-- group by error are displayed
SELECT price, SUM(price) FROM sales;

-- simple window function used
SELECT *, SUM(price) OVER() FROM sales;


-- now no group by(aggregate function) error are generate because we use over clause at the place 
-- of group by So total sum of price displayd as row . this is Global Sum
SELECT price, SUM(price) OVER() FROM sales;  -- Global sum


-- if the price is duplicate the it also display the duplicate addition multipal time
SELECT *,SUM(price) OVER(ORDER BY price) FROM sales; -- Running sum (focus on row 8&9 dulicate displayd)

-- removing the duplicate value
SELECT *,SUM(price) OVER(ORDER BY price, product_id) FROM sales; -- Running sum (focus on row 8&9 dulicate displayd)


-- How it's work ?
/*
Jab aap ORDER BY price likhte ho aur price same hota hai, toh SQL ko samajh nahi aata kis row ko 
pehle lena hai. Is wajah se running sum duplicate ho sakta hai. 

Lekin jab aap ORDER BY price, product_id 
likhte ho, toh har row ka order fix ho jata hai kyunki product_id unique hota hai. Isse duplicate running
sum avoid hota hai.
*/

/*
- Window = All rows in the partition
- Frame = Subset of rows within that window used for calculation 
*/



