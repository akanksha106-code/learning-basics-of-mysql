/* ================== JOINS =====================
Used to extract data from two or more tables:
1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL JOIN (simulated with UNION in MySQL)
================================================= */

USE demo1;

-- Drop tables if they already exist
DROP TABLE IF EXISTS employee2;
DROP TABLE IF EXISTS department;

-- Create employee2 table
CREATE TABLE employee2 (
    empid INT PRIMARY KEY,
    empname VARCHAR(100),
    empage INT,
    deptid INT,
    salary INT
);

-- Create department table
CREATE TABLE department (
    deptid INT,
    deptname VARCHAR(100),
    HOD VARCHAR(100)
);

/* ================== INSERT DATA ================== */

INSERT INTO employee2 VALUES 
(1, 'Aman', 30, 101, 100000),
(2, 'Anand', 35, 104, 110000),
(3, 'Vishal', 28, 103, 90000),
(4, 'Bhuvan', 40, 101, 120000),
(5, 'Geetha', 26, 103, 130000),
(6, 'Shalini', 31, 104, 80000),
(7, 'Shyam', 37, 106, 80000),
(8, 'Shubham', 31, 107, 60000);

INSERT INTO department VALUES 
(101, 'Marketing', 'Abhijeet'),
(102, 'Sales', 'Byju Ravindran'),
(103, 'Research', 'Srinivas'),
(104, 'Engineering', 'Muttuswamy'),
(105, 'HR', 'Srivalli');

/* ================== VIEW DATA ================== */

SELECT * FROM employee2;
SELECT * FROM department;

/* ================== QUESTIONS ==================

Q1: What is a JOIN in SQL?
Q2: Name the types of joins supported in MySQL.
Q3: How is INNER JOIN different from LEFT JOIN and RIGHT JOIN?
Q4: Why is FULL JOIN not directly supported in MySQL?
Q5: How do you simulate FULL JOIN in MySQL?

*/

/* ================== INNER JOIN ==================
- Extracts only common rows from both tables (intersection)
*/

SELECT e.empid, e.empname, e.deptid, d.deptname, d.HOD
FROM employee2 e
INNER JOIN department d
ON e.deptid = d.deptid;

/* ================== LEFT JOIN ==================
- Returns all rows from left table + matched rows from right table
*/

SELECT e.empid, e.empname, e.deptid, d.deptname, d.HOD
FROM employee2 e
LEFT JOIN department d
ON e.deptid = d.deptid;

/* ================== RIGHT JOIN ==================
- Returns all rows from right table + matched rows from left table
*/

SELECT e.empid, e.empname, e.deptid, d.deptid, d.deptname, d.HOD
FROM employee2 e
RIGHT JOIN department d
ON e.deptid = d.deptid;

/* ================== FULL JOIN (UNION) ==================
- Simulate FULL OUTER JOIN using UNION of LEFT JOIN and RIGHT JOIN
*/

SELECT e.empid, e.empname, e.deptid, e.empage, e.salary, d.deptid, d.deptname, d.HOD
FROM employee2 e
LEFT JOIN department d
ON e.deptid = d.deptid
UNION
SELECT e.empid, e.empname, e.deptid, e.empage, e.salary, d.deptid, d.deptname, d.HOD
FROM employee2 e
RIGHT JOIN department d
ON e.deptid = d.deptid;

/* ================== QUESTIONS ==================

Q6: Write a query to get all employees along with their department names using INNER JOIN.
Q7: Write a query to get all employees including those who do not belong to any department.
Q8: Write a query to get all departments and their employees, including departments without employees.
Q9: Simulate FULL JOIN in MySQL.
Q10: Explain the difference between INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN with examples.

*/

/* ================== STUDY RECOMMENDATION ==================

- Next topics to explore:
1. Stored Procedures
2. Triggers

*/
