
/*
INSERT INTO Customer_table VALUES 
  (1, 'ee', 'ef', 35, 'ef@xyz.com'),
  (2, 'FF', 'GG', 36, 'fg@xyz.com'),
  (3, 'hh', 'ii', 37, 'hif@xyz.com'),
  (4, 'jj', 'kk', 38, 'jk@xyz.com');
*/


--- COPY COMMAND
--FROM CSV
--COPY Customer_table FROM 'D:\Playlist\PY100\copy.csv' DELIMITER',' CSV HEADER;
--FROM TEXT
--COPY Customer_table FROM 'D:\Playlist\PY100\copytext.txt' DELIMITER',';


--- SELECT COMMAND
---Select one column
--SELECT firdt_name FROM customer_table;
---Select multiple columns
--SELECT firdt_name, last_name FROM customer_table;
---Select all columns
--SELECT * FROM customer_table;

/*The SQL WHERE clause is used to specify a condition while fetching the data from a single table or by joining with
multiple tables. If the given condition is satisfied, then only it returns a specific value from the table.

SELECT "column_name"
FROM "table_name"
WHERE "condition";
*/
---Equals to condition
--SELECT firdt_name FROM customer_table WHERE age = 25;
---Less than/ Greater than condition
--SELECT firdt_name, age FROM customer_table WHERE age>25;
---Matching text condition
--SELECT * FROM customer_table WHERE firdt_name = 'Jay';


---UPDATE
--The SQL UPDATE Query is used to modify the existing records in a table.
/*
UPDATE "table_name"
SET column_1 = [value1], column_2 = [value2], ...
WHERE "condition";
*/
---Single row (with column names specified)
/*UPDATE Customer_table
SET Age = 17, Last_name = 'Pe'
WHERE Cust_id = 2;*/
---Multiple rows
/*UPDATE Customer_table
SET email_id = 'gee@xyz.com'
WHERE Firdt_name = 'Gee' or Firdt_name = 'gee';*/

---DELETE
--The DELETE Query is used to delete the existing records from a table.
/*
DELETE FROM "table_name"
WHERE "condition";
*/

---Single row
/*DELETE FROM customer_table
WHERE Cust_ID = 6;
SELECT * FROM customer_table;*/
---Multiple rows
/*DELETE FROM customer_table
WHERE age>25;
SELECT * FROM customer_table;*/
---All rows
/*DELETE FROM customer_table;
SELECT * FROM customer_table;*/


---ALTER
--The ALTER TABLE statement is used to change the definition or structure of an existing table
/*Syntax
ALTER TABLE "table_name"
[Specify Actions];
Following actions can be performed
• Columns – Add, Delete (Drop), Modify or Rename
• Constraints – Add, Drop
• Index – Add, Drop
*/

---COLUMN – ADD & DROP
--The basic syntax of an ALTER TABLE command to add/drop a Column in an existing table is as follows.
/*Syntax
ALTER TABLE "table_name"
ADD "column_name" "Data Type";

ALTER TABLE "table_name"
DROP "column_name";
*/

---COLUMN – MODIFY & RENAME
--The basic syntax of an ALTER TABLE command to Modify/Rename a Column in an existing table is as follows.
/*Syntax
ALTER TABLE "table_name"
ALTER COLUMN "column_name" TYPE "New Data Type";

ALTER TABLE "table_name"
RENAME COLUMN "column 1" TO "column 2";
*/

---CONSTRAINT – ADD & DROP
--The basic syntax of an ALTER TABLE command to add/drop a Constraint on a existing table is as follows.
/*Syntax
1. ALTER TABLE "table_name“ ALTER COLUMN “column_name” SET NOT NULL;
2. ALTER TABLE "table_name“ ALTER COLUMN “column_name” DROP NOT NULL;
3. ALTER TABLE "table_name" ADD CONSTRAINT “column_name” CHECK
(“column_name”>=100);
4. ALTER TABLE "table_name" ADD PRIMARY KEY (“column_name”);
5. ALTER TABLE “child_table" ADD CONSTRAINT “child_column”
FOREIGN KEY (“parent column”) REFERENCES “parent table”;
*/