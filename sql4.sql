/* ====================== DATABASE & TABLE SETUP ====================== */

/*
Q1: How do you list all databases in MySQL?
Q2: How do you create a database if it doesn't exist?
Q3: How do you select a database to use?
Q4: How do you drop a table if it exists?
Q5: How do you create a table with constraints like PRIMARY KEY and DEFAULT?
*/

SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS demo0;
USE demo0;

DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
    empid INT PRIMARY KEY,
    fname VARCHAR(20) NOT NULL,
    lname VARCHAR(20),
    gender CHAR(1),
    city VARCHAR(100) DEFAULT 'Jaipur',
    salary INT,
    department VARCHAR(50)
);

DESC employee;  -- Q6: How do you view the structure of a table?


/* ====================== INSERT DATA ====================== */

/*
Q7: How do you insert multiple rows in a single query?
Q8: How do you insert a row using DEFAULT values for some columns?
*/


INSERT INTO employee (empid, fname, lname, gender, city, salary, department) VALUES
(101, 'Rahul', 'Sharma', 'M', 'Delhi', 55000, 'IT'),
(102, 'Priya', 'Mehra', 'F', 'Mumbai', 60000, 'HR'),
(103, 'Amit', 'Verma', 'M', DEFAULT, 45000, 'Finance'),
(104, 'Sneha', 'Kapoor', 'F', 'Pune', 70000, 'Marketing'),
(105, 'Karan', 'Singh', 'M', 'Chennai', 50000, 'IT'),
(106, 'Anjali', 'Rao', 'F', DEFAULT, 65000, 'Sales'),
(107, 'Deepak', 'Joshi', 'M', 'Bangalore', 48000, 'Operations'),
(108, 'Neha', 'Gupta', 'F', 'Hyderabad', 72000, 'Finance'),
(109, 'Arjun', NULL, 'M', DEFAULT, 55000, 'Support'),
(110, 'Isha', 'Desai', 'F', 'Ahmedabad', 53000, 'HR'),
(111, 'Vikas', 'Saxena', 'M', 'Jaipur', 46000, 'IT'),
(112, 'Megha', 'Patil', 'F', DEFAULT, 58000, 'Sales'),
(113, 'Rohit', 'Yadav', 'M', 'Noida', 62000, 'Finance'),
(114, 'Komal', 'Bhatia', 'F', 'Indore', 47000, 'Marketing'),
(115, 'Manish', 'Kumar', 'M', 'Delhi', 51000, 'Operations'),
(116, 'Pooja', 'Sinha', 'F', 'Lucknow', 49000, 'HR'),
(117, 'Suresh', 'Reddy', 'M', DEFAULT, 53000, 'Support'),
(118, 'Tanvi', 'Rana', 'F', 'Dehradun', 61000, 'Sales'),
(119, 'Yash', 'Mishra', 'M', 'Kolkata', 58000, 'Finance'),
(120, 'Ritika', 'Chopra', 'F', 'Mumbai', 64000, 'IT'),
(121, 'Abhishek', 'Pandey', 'M', 'Pune', 60000, 'Marketing'),
(122, 'Nikita', 'Thakur', 'F', DEFAULT, 70000, 'Finance'),
(123, 'Vivek', 'Tiwari', 'M', 'Kanpur', 48000, 'Operations'),
(124, 'Sakshi', 'Dwivedi', 'F', 'Gurgaon', 56000, 'HR'),
(125, 'Ravi', 'Naik', 'M', DEFAULT, 52000, 'Support'),
(126, 'Ankita', 'Singh', 'F', 'Bhopal', 59000, 'Sales'),
(127, 'Harsh', 'Bansal', 'M', 'Nagpur', 61000, 'Finance'),
(128, 'Tanya', 'Goyal', 'F', 'Surat', 62000, 'IT'),
(129, 'Nilesh', 'Jain', 'M', DEFAULT, 55000, 'HR'),
(130, 'Divya', 'Agarwal', 'F', 'Patna', 63000, 'Marketing'),
(131, 'Aarav', 'Kapoor', 'M', 'Mumbai', 68000, 'Finance'),
(132, 'Simran', 'Gill', 'F', DEFAULT, 54000, 'Support'),
(133, 'Mohit', 'Seth', 'M', 'Delhi', 47000, 'Operations'),
(134, 'Kritika', 'Malhotra', 'F', 'Lucknow', 60000, 'HR'),
(135, 'Aditya', 'Gupta', 'M', DEFAULT, 66000, 'IT'),
(136, 'Swati', 'Mishra', 'F', 'Ahmedabad', 58000, 'Sales'),
(137, 'Kunal', 'Joshi', 'M', 'Bangalore', 64000, 'Marketing'),
(138, 'Pallavi', 'Rathore', 'F', 'Pune', 69000, 'Finance'),
(139, 'Raghav', 'Khandelwal', 'M', DEFAULT, 57000, 'IT'),
(140, 'Ira', 'Dubey', 'F', 'Indore', 49000, 'Support'),
(141, 'Varun', 'Rawat', 'M', 'Noida', 61000, 'Operations'),
(142, 'Shreya', 'Nair', 'F', DEFAULT, 65000, 'HR'),
(143, 'Ayaan', 'Bhatt', 'M', 'Jaipur', 56000, 'Sales'),
(144, 'Preeti', 'Menon', 'F', 'Kochi', 67000, 'Finance'),
(145, 'Dhruv', 'Tripathi', 'M', 'Hyderabad', 70000, 'IT'),
(146, 'Rhea', 'Saxena', 'F', DEFAULT, 59000, 'Marketing'),
(147, 'Siddharth', 'Chauhan', 'M', 'Delhi', 62000, 'Support'),
(148, 'Avni', 'Roy', 'F', 'Mumbai', 64000, 'Sales'),
(149, 'Uday', 'Verma', 'M', DEFAULT, 55000, 'Operations'),
(150, 'Ishita', 'Bose', 'F', 'Kolkata', 60000, 'HR');



/* ====================== BASIC SELECT ====================== */

/*
Q9: How do you select all columns from a table?
Q10: How do you select specific columns from a table?
*/

SELECT * FROM employee;
SELECT fname FROM employee;
SELECT fname, lname, salary FROM employee;
SELECT department FROM employee;


/* ====================== DISTINCT ====================== */

/*
Q11: How do you get only unique values from a column?
*/

SELECT DISTINCT department FROM employee;
SELECT DISTINCT city FROM employee;
SELECT DISTINCT salary FROM employee;


/* ====================== WHERE CLAUSE ====================== */

/*
Q12: How do you filter records with a condition?
Q13: How do you combine multiple conditions using AND, OR?
Q14: How do you use BETWEEN, IN, NOT IN, LIKE?
*/

SELECT * FROM employee WHERE department = 'IT' AND gender = 'F';
SELECT DISTINCT empid, fname, lname, department FROM employee WHERE department = 'Finance';
SELECT * FROM employee WHERE salary BETWEEN 50000 AND 70000;
SELECT * FROM employee WHERE city IN ('Jaipur', 'Pune');
SELECT * FROM employee WHERE fname LIKE 'A%';   -- starts with A
SELECT * FROM employee WHERE lname LIKE '%a';   -- ends with a
SELECT * FROM employee WHERE city LIKE '%pur';  -- ends with pur


/* ====================== ORDER BY ====================== */

/*
Q15: How do you sort results in ascending or descending order?
Q16: How do you sort by multiple columns?
*/

SELECT * FROM employee ORDER BY salary ASC;
SELECT * FROM employee ORDER BY salary DESC, fname ASC;
SELECT * FROM employee WHERE department = 'Finance' ORDER BY salary DESC;


/* ====================== LIMIT ====================== */

/*
Q17: How do you limit the number of rows returned?
Q18: How do you skip certain rows and fetch the next few?
*/

SELECT * FROM employee LIMIT 5;
SELECT * FROM employee ORDER BY salary ASC LIMIT 4,1;  -- 5th lowest salary


/* ====================== AGGREGATE FUNCTIONS ====================== */

/*
Q19: How do you count the number of rows in a table?
Q20: How do you calculate SUM, AVG, MIN, MAX of a column?
*/

SELECT COUNT(*) FROM employee;
SELECT COUNT(*) FROM employee WHERE gender = 'M';
SELECT SUM(salary) FROM employee WHERE department = 'Finance';
SELECT AVG(salary) FROM employee WHERE department = 'Finance';
SELECT MIN(salary) FROM employee WHERE department = 'Finance';
SELECT MAX(salary) FROM employee WHERE department = 'Finance' AND gender = 'M';


/* ====================== GROUP BY ====================== */

/*
Q21: How do you group rows based on a column?
Q22: How do you combine GROUP BY with aggregate functions like COUNT and AVG?
*/

SELECT department, COUNT(*) AS total_employees FROM employee GROUP BY department;
SELECT department, AVG(salary) AS avg_salary FROM employee GROUP BY department ORDER BY avg_salary DESC;
SELECT city, MAX(salary) AS highest_salary FROM employee GROUP BY city;


/* ====================== HAVING ====================== */

/*
Q23: How is HAVING different from WHERE?
Q24: How do you filter groups after using GROUP BY?
*/

SELECT department, AVG(salary) AS avg_salary 
FROM employee 
GROUP BY department 
HAVING avg_salary > 50000;

SELECT department, AVG(salary) AS avg_female_salary 
FROM employee 
WHERE gender='F' 
GROUP BY department 
HAVING avg_female_salary > 40000 
ORDER BY avg_female_salary DESC;


/* ====================== SUBQUERIES ====================== */

/*
Q25: How do you write a query inside another query?
Q26: How do you select employees having salary greater than the average salary?
*/

SELECT * FROM employee 
WHERE salary > (SELECT AVG(salary) FROM employee);
