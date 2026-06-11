CREATE TABLE "Utitled Product"(
	"BILL NO" VARCHAR(10) UNIQUE,
	"DATE" DATE NOT NULL,
	"NAME OF COSTUMER" VARCHAR(50) NOT NULL,
	"PRODUCT" VARCHAR(40),
	"RATE" SMALLINT NOT NULL,
	"QUANTITY RATE" INT NOT NULL, 
	"TOTAL AMOUNT" NUMERIC(10),
	"DISCOUNT" VARCHAR(30) NOT NULL,
	"DISCOUNT AMOUNT" INT NOT NULL,
	"REGLUAR COSTUMER" VARCHAR(10) DEFAULT 'Yes'
);

-- Rename the table
ALTER TABLE "Utitled Product"
RENAME TO "Untitled Product";

--access the product
SELECT * FROM "Untitled Product"; 


-- Import txt nodepad data file  
COPY "Untitled Product" FROM 'D:\_8_Sql_COPY_PATH_CMD.txt' 
DELIMITER ',';


-- Import the CSV excel data file 
COPY "Untitled Product" 
FROM 'D:\_8_Sql_COPY_PATH_CMD.CSV' 
DELIMITER ',' CSV HEADER;



-- export sql data to csv file excel format
COPY "Untitled Product"
TO 'D:\_8_Sql_COPY_PATH_CMD.CSV' 
DELIMITER '|';


-- export sql data to csv file excel format
COPY "Untitled Product"
TO 'D:\_8_Sql_COPY_PATH_CMD.TXT' 
DELIMITER '|';

SELECT * FROM "Untitled Product";



/*
COPY is a PostgreSQL command used for bulk data transfer between database tables and external files. 
It efficiently imports/exports large datasets.

There are tow type of Copy Categorized on the basic file location
1) SERVER-SIDE COPY - COPY 
    File must be on database server
    Used when file is on PostgreSQL server machine

2) CLIENT-SIDE COPY - \copy
    File can be on your local computer
    Used when file is on your personal machine


DELIMITER 
Defines how values are separated in the file, using comma or other characters to 
assign values to correct columns.

Specifies the separator character between values and sets to the column
Example:
DELIMITER ',' → Sets: Column1=wizard, Column2=joy, Column3=25 → comma separated
DELIMITER '|' → Sets: Column1=wizard| Column2=joy| Column3=25 → pipe separated


CSV - 
- Specifies the file is in CSV format (handles quotes, commas in data) or
- File format with special handling for quoted values and commas within data 

HEADER
- Skips the first row containing column titles during import or 
- First row contains column names, skip it when importing

There are  some file that support's COPY command like  : - 
.txt (Text files)
.csv (CSV files)
.dat (Data files) etc..

File that not support COPY command like : -
.xls, .xlsx (Excel files)
.pdf (PDF files)
.json (JSON files)
.xml (XML files)
.doc (Word documents) etc...

Note :-
COPY doesn't care about extensions - 
it only cares about file content format (CSV, text, delimited data).


Syntax:-
-- to import entire data
COPY tableName FROM 'path.txt' 
DELIMITER ',';


syntax : -
-- to import Specific columns
COPY table(col1, col2) FROM '/path/file.txt' 
DELIMITER ',';


syntax:-
-- to import csv format data
COPY tablename FROM '/path/file.csv' CSV HEADER;


syntax : -
-- to costumise delimiter
COPY table FROM '/path/file.txt' 
DELIMITER '|';


-- import 
syntax : -
COPY table_name  FROM 'file_path' 
[WITH (options)];



-- export as txt file 
COPY tableName TO '/path/file.sql' 
DELIMITER '|'



-- export table data to csv file
syntax : -
COPY tableName  TO '/data/backup.csv' 
DELIMITER '|' CSV HEADER;


-- export  table data with some options 
syntax : -
COPY tableName TO 'file_path' 
[WITH (options)];

like : -
COPY table TO 'file.txt' 
WITH (DELIMITER '|', HEADER, FORMAT CSV);

*/
