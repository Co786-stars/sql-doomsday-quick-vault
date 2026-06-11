-- ---------------------------------------------------------------------------
-- CREATE TABLE COMMAND EXAMPLES
-- ---------------------------------------------------------------------------

-- creating the table users
CREATE TABLE users (
	emp_id 			INT PRIMARY KEY,
	full_name 		VARCHAR(100) NOT NULL,
	email 			VARCHAR(120) UNIQUE NOT NULL,
	Project_name 	VARCHAR(100) NOT NULL,
	department 		VARCHAR(150) NOT NULL,
	password_hash 	VARCHAR(255) NOT NULL,
	joining_date 	DATE NOT NULL,
	emp_salary 		NUMERIC(10, 2)
);

-- industry standard format
-- creating product table 
CREATE TABLE product_info (
    product_name        VARCHAR(20) NOT NULL,
    product_ID          VARCHAR(12) NOT NULL PRIMARY KEY,
    product_psscode     INT NOT NULL,
    order_date          DATE NOT NULL,
    email_id            VARCHAR(50) NOT NULL UNIQUE,
    product_delivered   BOOLEAN NOT NULL,

    customer_name       VARCHAR(50),
    address             VARCHAR(200),
    customer_location   VARCHAR(50),
    contact_info        VARCHAR(15),

    quantity            INT DEFAULT 1,
    price               DECIMAL(10,2),
    payment_method      VARCHAR(20),
    payment_status      VARCHAR(20),
    delivery_date       DATE,
    delivery_agent      VARCHAR(50),
    remarks             VARCHAR(200)
);

--  select to check table is exist or not
SELECT * 
FROM users;

SELECT *
FROM product_info;



-- revision all in one in one frame
-- REVISION DATATYPES RAPID FIRE
CREATE TABLE datatypes_revision (
    -- STRING TYPES
    name_varchar        VARCHAR(50),            -- variable length string
    code_char           CHAR(5),                -- fixed length string
    description_text    TEXT,                   -- long text

    -- NUMERIC TYPES
    quantity_int        INT,                    -- whole number
    price_decimal       DECIMAL(10,2),          -- money values
    rating_float        REAL,                   -- floating number
    score_double        DOUBLE PRECISION,       -- double precision
    small_number        SMALLINT,               -- small integer
    big_number          BIGINT,                 -- large integer
    exact_numeric       NUMERIC(10,2),          -- exact numeric

    -- BOOLEAN
    is_active           BOOLEAN,                -- TRUE / FALSE

    -- DATE & TIME TYPES
    order_date          DATE,                   -- only date
    order_time          TIME,                   -- only time
    order_timestamp     TIMESTAMP,              -- date + time
    created_at          TIMESTAMPTZ,            -- date + time with timezone

    -- BINARY TYPES
    image_blob          BYTEA,                  -- binary large object

    -- ENUM (PostgreSQL requires CREATE TYPE)
    -- status_enum      my_enum_type,           -- custom enum type

    -- JSON TYPE
    extra_data          JSON,                   -- structured JSON data

    -- ARRAY TYPE
    tags_array          TEXT[],                 -- array of text

    -- UUID TYPE
    unique_uuid         UUID DEFAULT gen_random_uuid(),

    -- AUTO INCREMENT PRIMARY KEY (PostgreSQL)
    id                  SERIAL PRIMARY KEY
);

SELECT *
FROM datatypes_revision;

-- creating the table appuser
CREATE TABLE 

-- creating the table invoice
CREATE TABLE 

-- 	user_id,
-- 	user_name,
-- 	email,
-- 	signup_date
/*
Definition:
The CREATE TABLE command is a DDL (Data Definition Language) statement in SQL used to create a new table within an existing database. 
It defines the structure of the table by specifying column names, data types, and constraints.

- The CREATE TABLE statement creates one table at a time.
- Each column must have a valid data type such as INT, VARCHAR, DATE, or NUMERIC.
- Constraints like PRIMARY KEY, UNIQUE, NOT NULL, and FOREIGN KEY help maintain data accuracy and integrity.
- A table must be created inside a database that already exists.
- Table names should be simple, meaningful, and written without spaces for professional and consistent usage.

Syntax:
CREATE TABLE table_name (
    column_name1 data_type constraint,
    column_name2 data_type constraint,
    ...
);

Question:
Write SQL commands to create the following table using the CREATE TABLE statement. 
Use proper column names, data types, and constraints as required.

Instructions :-
- Use proper datatypes (INT, VARCHAR, DATE, NUMERIC)
- Apply constraints (PRIMARY KEY, NOT NULL, UNIQUE, DEFAULT)
- Make sure syntax is correct and ends with ;


*/

-- Note :- 
-- Once a database is created, we can define tables inside it to store data.
-- A table holds structured information, organized into columns (fields) and rows (records).
-- The CREATE TABLE command is used to create a new table within an existing database.
-- Each table contains multiple columns, and every column must have a specific data type.
-- All column definitions are written inside parentheses ( ), separated by commas.

