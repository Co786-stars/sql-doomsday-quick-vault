-- Bitwise operator 
SELECT 
	  5 & 3 AS "Bitwise_AND",
	  5 | 3 AS "Bitwise_OR",
	  5 # 3 AS "Bitwise_XOR", -- in most of the language we sue ^ for XOR
	  ~3 AS "Bitwise_NOT", 
	  5 << 3 "Shift_lfet",   -- left sift means sift the binary bit 3 time in left 
	  5 >> 3 "Shift_right";  -- shift right three time to 5 in binary 101 ans 1

-- POWER function
SELECT POWER(5, 3);


/*
Bitwise operator (perform bit-level operations)
Bitwise operators perform low-level operations on the individual binary bits of integer values, 
allowing for direct bit manipulation, masking, and testing within SQL queries.
   
Bitwise operator is a symbol used to perform operations directly on the binary (bit-level) 
representations of integers, manipulating individual bits to produce a result.
Example ➡️ &, |, ^, ~, <<, >>

In simple way : -
The bitwise operators are use to perform operations on individual bits of binary numbers using 
six symbol. &, |, ~, ^, <<, >>

Precedence (Highest to lowest)
(~)👉 (<< >>) 👉 (&) 👉 XOR(^)👉 OR(|)

How it work internally : -
& (Bitwise AND)
------------------------------
In Python : 
a, b = 5, 6
c = a & b
print(bin(c))

Output Explain: - 
Now as we know :- 
a = 101
b = 110
-----------
c = 001 -> ( 1 0 : 0, 
-----------  0 1 : 0, 
			 1 1 : 1 = 001 ) 

Output : - translator convert 001 to decimal that is = 1 

To understand this we need to known concept : -
Truth Table for Bitwise AND : -
1 1 = 1
1 0 = 0
0 1 = 1
0 0 = 0

⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️
--------------------------------




How it's work internally : -
| (Bitwise OR)
------------------------------
In Python : 
a, b = 5, 6
c = a | b
print(bin(c))

Output Explain: - 
Now as we know :- 
a = 101
b = 110
-----------
c = 111 -> ( 1 0 : 1, 
-----------  0 1 : 1, 
			 1 1 : 1 = 111 ) 

Output : - translator convert 111 to decimal that is = 7

To understand this we need to known concept : -
Truth Table for Bitwise OR : -
1 1 = 1
1 0 = 1
0 1 = 1
0 0 = 0

⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️
--------------------------------






How it's work internally : - 
^ (Bitwise XOR) -> In SQL we use (#) symboll at the place of (^)
------------------------------
In Python :
a, b = 5, 6
c = a ^ b       -- IN SQL WE USE a#b for bitwise XOR
print(bin(c))

Output Explain: - 
Now as we know :- 
a = 101
b = 110
-----------
c = 011 -> ( 1 0 : 1, 
-----------  0 1 : 1, 
			 1 1 : 0 = 110 ) 

Output : - 6
translator convert 110 to decimal that is = 6
To understand this we need to known concept : -
If at both place value are same then XOR is 0 otherwise 1 .
example : -
1  1 = 0
0  0 = 1 
Truth Table for Bitwise XOR : -
1 1 = 0
1 0 = 1
0 1 = 1
0 0 = 0

⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️
--------------------------------





How it works internally:
Bitwise NOT (~) Operator ---> (NEED TO READ AGAIN)
------------------------------
In Python:
a = 5
c = ~a
print(bin(c))

Output Explanation:
Let's understand how ~a gives a negative result.

Step 1: Binary of a = 5
a = 00000101 (8-bit representation)

Step 2: Apply Bitwise NOT (~)
~a flips all bits:
~00000101 = 11111010

Step 3: Convert to Decimal
11111010 is the two's complement of -6
So, ~5 = -6

General Rule:
~x = -(x + 1)

Example:
~5 = -(5 + 1) = -6

Why It Looks Negative:
Bitwise NOT flips all bits including the sign bit.
In two's complement, if the first bit is 1 → it's a negative number.

Binary Examples:
Decimal : 5, 6, 7...
Binary  : 00000101, 00000110, 00000111...

Truth Table for Bitwise NOT:
1 → 0
0 → 1

Summary:
Bitwise NOT flips each bit.
In Python, it returns a signed integer using two's complement.
That's why ~a often gives a negative result.

⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️⚖️
--------------------------------




How it works internally:
Bitwise Shift Operators in SQL
 ------------------------------
 Notes : -
 These operators work only on integer types.
 Bitwise shifts are useful for performance optimization and low-level data manipulation.

  Left Shift (<<):
  - Shifts the binary digits of a number to the left.
  - Each left shift multiplies the number by 2.
  
  - Example: 
      a = 5 (binary: 101)
      b = 2
      a << b = 20 (binary: 10100) #output
  
  - Explanation :
    a, b = 5, 2
    c = a << b     -- means shift the binary digits left side b times
	c = 101 << 010
	
    a       :      1 0 1
	             1 0 1 _   --->sift left first time  (at the empty place 0 is set   1010)
               1 0 1 _ _   --->sift left second time (at the empty place 0 is set  10100)

   finally  :  1 0 1 0 0   ---> Exact number that we get after shefting is 10100 that is 20


------------------------------------

  Right Shift (>>):
  - Shifts the binary digits of a number to the right.
  - Each right shift divides the number by 2 (ignoring remainder).
  
  - Example:
      a = 20 (binary: 10100)
      b = 2
      a >> b = 5 (binary: 101)
	  
  - Explanation :
    a, b = 5, 2
    c = a >> b     -- means shift the binary digits right side b times
	c = 101 >> 010
	
    a       : 1 0 1
	          _ 1 0    1(out)            --->sift right first time  (at the empty place 0 is set 10)
              _ _ 1    0(out) 1(out)     --->sift right second time (at the empty place 0 is set  1)

   finally  : 0 0 1  ---> Exact number that we get after shifting is 001 that is 1.
*/

