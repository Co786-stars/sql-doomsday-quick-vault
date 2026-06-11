--   Frames are part of the OVER() clause in SQL, which is used with window (or analytic) functions like 
--   ROW_NUMBER(), RANK(), SUM(), AVG(), etc.

--   Defines row range: 
--   While PARTITION BY divides the data into groups, the frame clause defines which 
--   rows within each partition are considered for the calculation.

--   Common Frame Clauses :- 
-- - ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW:
--   Includes all rows from the start of the partition up to the current row.

-- - ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING: preceding + current + following
--   Includes one row before and one after the current row.


-- - RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING: 
--   Includes all rows from the current row to the end of the partition.



-- Find the running sum with quantity 20 : ✅preceding + ✅current
SELECT *, SUM(price) OVER(ORDER BY price ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) FROM sales;
-- WHERE quantity = 20;


-- Find running sum between two previous and current row : ✅preceding + ✅current + following❎
SELECT *, SUM(price) OVER(ORDER BY price ROWS BETWEEN 1  PRECEDING AND 1 FOLLOWING) FROM sales;


-- Find running sum between one previous and current row
SELECT *, SUM(price) OVER(ORDER BY price RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) FROM sales;


SELECT *, SUM(price) OVER(ORDER BY price RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) FROM sales
ORDER BY sum ASC ;  -- try to check the last value is same or not 



-- Concept -> ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
/*

✅ Absolutely correct analysis! 
SELECT *, SUM(price) OVER(ORDER BY price ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) FROM sales;

ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
(only preceding row add one by one with current row not Following/next row)
-> calculates a cumulative sum for each row — from the beginning up to the current row 
-> इसमें हर row के लिए cumulative sum calculate होता है — शुरुआत से लेकर current row तक।

Row-wise Breakdown: 
| Current Row | Preceding Rows Included in SUM | 
| 1           | None         → only 25
| 2           | Row 1        → 25 + 45
| 3           | Row 1, 2     → 25 + 45 + 120
| 4           | Row 1, 2, 3  → 25 + 45 + 120 + 160
| 5           | Row 1 to 4   → 25 + 45 + 120 + 160 + 180
| 6           | Row 1 to 6   → 25 + 45 + 120 + 160 + 180 + 350
| nth         | Row 1 to nth → adds everything up to that row

-- Basic Explanation: -> ✅preceding + ✅current + following❎
For each row, SQL adds all previous rows starting from the first one — that’s 
what "UNBOUNDED PRECEDING" means: from the very beginning up to the current row

*/




-- concept -> ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING: preceding
/*

✅ Absolutely correct analysis! 
SELECT *, SUM(price) OVER(ORDER BY price RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) FROM sales;

ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
(only one preceding row and one following row are added along with the current row)
→ calculates a moving sum for each row — centered around the current row
→ इसमें हर row के लिए जोड़ होता है — एक पिछली, एक अभी की, और एक अगली row शामिल होती है

First row → current + following
Middle rows → preceding + current + following
Last row → preceding + current

row1. 		| 25+45       → 70  = cr + fl        -- because preceding row is not avaliable at first row
row2. 		| 25+45+120   → 215 = pr + cr + fl
row3. 		| 45+120+160  → 190 = pr + cr + fl
row4. 		| 120+160+180 → 325 = pr + cr + fl
row5. 		| 160+180+350 → 460 = pr + cr + fl
rnth. ......|             →     = cr + pr         -- because following row is not avaiable at last row

-- Basic Explanation: -> ✅preceding + ✅current + following✅

*/




-- concept -> RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING: 
/*
✅ Absolutely correct analysis!
SELECT *, SUM(price) OVER(ORDER BY price RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) FROM sales;

RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING:
(Only the preceding row is excluded; the current row and all following rows are included in the calculation)
 → Includes all rows after the current row but does not include any preceding rows before the current row
→ यह clause अभी की row से शुरू करता है, और आखिरी row तक की सारी rows को जोड़ता है।


Row-wise Breakdown: 
| Current Row | Preceding Rows Included in SUM | 
| Row1           | 1 to nth     → 25 + 45 + 120 + 160 + 180 + 350 + ...nth
| Row2           | 2 to nth     → 45 + 120 + 160 + 180 + 350 + ...nth
| Row3           | 3 to nth    	→ 120 + 160 + 180 + 350 + ...nth
| Row4           | 4 to nth  	→ 160 + 180 + 350 + ...nth
| Row5           | 5 to nth   	→ 180 + 350 + ...nth
| Row6           | 6 to nth   	→ 350 + ...nth
| Rownth         | _ to nth 	→ nth (last row only, no following rows)

-- Basic Explanation: -> ❎preceding + ✅current + ✅following
Includes all rows from the current row to the end of the partition.
पिछली rows/preceding शामिल नहीं होतीं अभी की और उसके बाद की rows शामिल होती हैं

Note : - # nth is denote the last row 
         # Current row is include in every Frame clause
*/

