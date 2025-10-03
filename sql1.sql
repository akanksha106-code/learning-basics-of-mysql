
/* ================== SQL CHEAT SHEET ================== */

/* 1️⃣ SHOW DATABASES */
SHOW DATABASES;

/* 2️⃣ CREATE DATABASE */
CREATE DATABASE IF NOT EXISTS demo2;
USE demo2;  -- Switch to the new database

/* 3️⃣ CREATE TABLE */
CREATE TABLE IF NOT EXISTS student (
    first_name VARCHAR(15),
    last_name VARCHAR(15),
    age INT,
    city VARCHAR(100)
);

/* Check tables and schema */
SHOW TABLES;
DESC student;

/* 4️⃣ ALTER TABLE EXAMPLES */

/* Add a column */
ALTER TABLE student 
ADD dob DATE;

DESC student;

/* Drop a column */
ALTER TABLE student
DROP COLUMN city;

DESC student;

/* Rename a column */
ALTER TABLE student
RENAME COLUMN age TO rollno;

DESC student;

/* Modify datatype */
ALTER TABLE student
MODIFY last_name VARCHAR(50);

DESC student;

/* Rename table */
ALTER TABLE student
RENAME TO employees;

DESC employees;

/* 5️⃣ INSERT DATA */
INSERT INTO employees (first_name, last_name, rollno, dob) 
VALUES 
("Rohan", "Singh", 22, '2000-01-01'),
("Rishi", "Rishi", 23, '2001-02-03');

/* View data */
SELECT * FROM employees;

/* 6️⃣ TRUNCATE vs DROP */

/* TRUNCATE - deletes all rows but keeps table */
TRUNCATE TABLE employees;

SELECT * FROM employees; -- table is empty but still exists

/* Re-insert data to test DROP */
INSERT INTO employees (first_name, last_name, rollno, dob) 
VALUES 
("Rohan", "Singh", 22, '2000-01-01'),
("Rishi", "Rishi", 23, '2001-02-03');

/* DROP - deletes table permanently */
DROP TABLE employees;

/* Verify deletion */
SHOW TABLES;  -- employees table no longer exists

/* Trying to DESC a dropped table will throw an error */
/* DESC employees; -- DO NOT RUN AFTER DROP */
