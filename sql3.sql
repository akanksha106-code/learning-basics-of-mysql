/* ================== SQL CONSTRAINTS CHEAT SHEET ================== */

/* Constraints enforce rules on table columns to maintain data integrity */

/* Common Constraints:
1. NOT NULL    -> Column cannot have NULL values
2. UNIQUE      -> Column values must be unique
3. DEFAULT     -> Column gets a default value if not provided
4. CHECK       -> Column must satisfy a condition
5. PRIMARY KEY -> Uniquely identifies each row
6. FOREIGN KEY -> References a column in another table
*/

/* 1️⃣ USE DATABASE */
-- Make sure the database exists
-- CREATE DATABASE IF NOT EXISTS children;
USE children;

/* 2️⃣ CREATE TABLE WITH CONSTRAINTS */
CREATE TABLE IF NOT EXISTS childs (
    ID INT PRIMARY KEY AUTO_INCREMENT,   -- Unique ID for each child
    FNAME VARCHAR(20) NOT NULL,          -- Cannot be NULL
    LNAME VARCHAR(20),
    GENDER CHAR(1),
    CITY VARCHAR(20) DEFAULT "PUNE",     -- Default value if not provided
    AGE INT CHECK (AGE <= 6)             -- Age must be <= 6
);

/* Check table structure */
DESC childs;

/* 3️⃣ INSERT DATA */

/* All columns specified */
INSERT INTO childs (FNAME, LNAME, GENDER, CITY, AGE)
VALUES ("RISHU", "SINGH", 'G', "MUMBAI", 4);

/* CITY column not provided → default "PUNE" will be used */
INSERT INTO childs (FNAME, LNAME, GENDER, AGE)
VALUES ("RISHI", "SINGH", 'G', 5);

/* View all rows */
SELECT * FROM childs;
