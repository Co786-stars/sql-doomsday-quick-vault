-- STRING OPERATOR
SELECT 'Hello' || 'Everyone' AS Join_string; -- Returns 'HelloEveryone'

SELECT CONCAT('Hello', 'Everyone');

SELECT 'Hello' + 'Everyone';  -- ❎ Does not support in some RDBMS like PostGress

/*
_____________________________________________________________________________________________________
String operator (perform String operation) : -
String operators in SQL are special operators and functions used to manipulate, combine, compare, 
or perform operations on character string data types.
Example ➡️ +, ||

Syntax : -
SELECT 'Str1st' || 'Str2nd'     -- support in most of the RDBMS
SELECT CONCAT(Str1st, Str2nd)   -- support in most of the RDBMS
SELECT 'Str1st' + 'Str2nd'      -- Doesn't support in most of the RDBMS

*/


/*

UNARY OPERATOR  (NOT SUPPORTED IN SQL OR MOST OF THE RDBMS)
These do NOT work: THEY ALL ARE NOT SUPPORT
❎SELECT ++counter  
❎SELECT --counter  
❎SELECT counter++
❎SELECT  counter--
❎SELECT !flag
❎SELECT ~bitmask (in most databases)
❎SELECT *pointer (no pointers in SQL)
❎SELECT &address (no address operators)


UNARY operator that Support and use Rarely : -
✅SELECT -5 -- Unary minus (negative numbers)
✅SELECT +10 -- Unary plus (rarely used)

*/