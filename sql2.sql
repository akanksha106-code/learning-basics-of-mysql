/* ================== SQL DML CHEAT SHEET ================== */

/* 1️⃣ SHOW DATABASES */
SHOW DATABASES;

/* 2️⃣ USE DATABASE */
-- Make sure the database exists
-- CREATE DATABASE IF NOT EXISTS demo;
USE demo;

/* 3️⃣ CREATE TABLE */
CREATE TABLE IF NOT EXISTS employee (
    NAME VARCHAR(30),
    AGE INT,
    CITY VARCHAR(20)
);

DESC employee;  -- Describe the table structure

/* ================== DML COMMANDS ==================
DML = Data Manipulation Language
Commands:
- INSERT
- UPDATE
- DELETE
- SELECT
*/

/* 4️⃣ INSERT INTO TABLE */

/* Method 1: Insert values for all columns in order */
INSERT INTO employee VALUES ("ram", 22, "pune");

/* Method 2: Specify columns explicitly */
INSERT INTO employee (NAME, AGE, CITY)
VALUES ("ROHAN", 23, "MUMBAI");

/* Method 3: Partial columns (other columns get NULL by default) */
INSERT INTO employee (NAME, AGE)
VALUES ("RIHAN", 24);

/* Method 4: Insert multiple rows at once */
INSERT INTO employee (NAME, AGE, CITY)
VALUES 
("ROSHNI", 63, "DELHI"),
("ROHANI", 29, "DEHRADUN"),
("SAM", 28, "DAMAN");

/* View all rows */
SELECT * FROM employee;

/* ================== UPDATE TABLE ================== 
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;

⚠️ Always use WHERE clause to avoid updating all rows
*/

/* Disable safe updates for MySQL Workbench if needed */
SET SQL_SAFE_UPDATES = 0;

/* Update single column for a specific row */
UPDATE employee
SET AGE = 33
WHERE NAME = "ROHAN";

SELECT * FROM employee;

/* Update multiple columns with multiple conditions */
UPDATE employee
SET CITY = "NASIK"
WHERE NAME = "ROHAN" AND AGE = 33;

SELECT * FROM employee;

/* Update based on a condition */
UPDATE employee
SET CITY = "VNS"
WHERE AGE < 30;

SELECT * FROM employee;

/* ================== DELETE FROM TABLE ==================
DELETE FROM table_name
WHERE condition;

⚠️ Without WHERE, DELETE removes all rows
*/

/* Delete rows matching a condition */
DELETE FROM employee
WHERE CITY = "VNS" AND AGE <= 25;

SELECT * FROM employee;
