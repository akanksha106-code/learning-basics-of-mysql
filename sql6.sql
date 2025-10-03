

---

## 1️⃣ Table Basics & Constraints

```sql
CREATE TABLE employee (
    empid INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50),
    gender CHAR(1),
    deptid INT,
    salary INT DEFAULT 5000,
    city VARCHAR(50) DEFAULT 'Jaipur',
    CONSTRAINT chk_salary CHECK (salary>0)
);
```

**Key constraints:** NOT NULL, UNIQUE, DEFAULT, CHECK, PRIMARY KEY, FOREIGN KEY

---

## 2️⃣ SELECT & Filtering

```sql
SELECT * FROM employee;
SELECT fname, lname, salary FROM employee;
SELECT * FROM employee WHERE salary>50000;
SELECT * FROM employee WHERE deptid IN (101,102);
SELECT * FROM employee WHERE fname LIKE 'A%';
SELECT * FROM employee WHERE lname LIKE '%n';
SELECT * FROM employee WHERE salary BETWEEN 50000 AND 70000;
SELECT * FROM employee WHERE deptid=101 AND salary>50000;
```

---

## 3️⃣ Aggregate Functions

```sql
SELECT COUNT(*) FROM employee;
SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee WHERE deptid=101;
SELECT MIN(salary), MAX(salary) FROM employee;
SELECT deptid, COUNT(*) AS emp_count FROM employee GROUP BY deptid;
SELECT deptid, AVG(salary) AS avg_sal FROM employee GROUP BY deptid ORDER BY avg_sal DESC LIMIT 3;
SELECT deptid, AVG(salary) avg_sal FROM employee GROUP BY deptid HAVING avg_sal>60000;
```

---

## 4️⃣ JOINs

```sql
-- Inner join
SELECT e.empid, e.fname, d.deptname FROM employee e INNER JOIN department d ON e.deptid=d.deptid;

-- Left join
SELECT e.fname, d.deptname FROM employee e LEFT JOIN department d ON e.deptid=d.deptid;

-- Right join
SELECT e.fname, d.deptname FROM employee e RIGHT JOIN department d ON e.deptid=d.deptid;

-- Full join
SELECT * FROM employee LEFT JOIN department USING(deptid)
UNION
SELECT * FROM employee RIGHT JOIN department USING(deptid);
```

---

## 5️⃣ Subqueries

```sql
SELECT * FROM employee WHERE salary > (SELECT AVG(salary) FROM employee e2 WHERE e2.deptid=employee.deptid);
SELECT * FROM department WHERE deptid NOT IN (SELECT DISTINCT deptid FROM employee);
```

---

## 6️⃣ CASE & Conditional Logic

```sql
SELECT fname, job, salary,
CASE
  WHEN job='Clerk' THEN salary*1.1
  WHEN job='Salesman' THEN salary*1.15
  WHEN job='Analyst' THEN salary*1.12
  ELSE salary*1.08
END AS salary_after_increment
FROM employee;
```

---

## 7️⃣ ORDER BY & LIMIT

```sql
SELECT * FROM employee ORDER BY salary DESC;
SELECT * FROM employee ORDER BY deptid ASC, salary DESC;
SELECT * FROM employee ORDER BY salary DESC LIMIT 3;
SELECT * FROM employee ORDER BY salary ASC LIMIT 4,1;
```

---

## 8️⃣ Top N & Ranking Patterns

```sql
SELECT * FROM employee e1 WHERE salary = (SELECT MAX(salary) FROM employee e2 WHERE e2.deptid=e1.deptid);
SELECT * FROM employee WHERE salary > (SELECT AVG(salary) FROM employee e2 WHERE e2.deptid=employee.deptid);
```

---

## 9️⃣ Set Operations

```sql
SELECT fname FROM employee WHERE deptid=101
UNION
SELECT fname FROM employee WHERE deptid=102;

SELECT * FROM employee e WHERE EXISTS (SELECT 1 FROM department d WHERE d.deptid=e.deptid);
```

---

## 🔟 Advanced Joins & Scenarios

```sql
-- Employee + Manager Name
SELECT e1.fname AS employee, e2.fname AS manager FROM employee e1 LEFT JOIN employee e2 ON e1.manager_id=e2.empid;

-- Total receipts & payments per account
SELECT accode, acname, trandate, 
SUM(CASE WHEN trantype='R' THEN amount ELSE 0 END) AS receipts,
SUM(CASE WHEN trantype='P' THEN amount ELSE 0 END) AS payments
FROM tran JOIN master USING(accode) GROUP BY accode, trandate;

-- Highest paid per manager
SELECT manager_id, MAX(salary) FROM employee GROUP BY manager_id;
```

---

## 11️⃣ Quick Tricks

1. **Logical Order:** WHERE → GROUP BY → HAVING → ORDER BY → LIMIT
2. **Alias columns**: `AS avg_sal`
3. **Subqueries**: use dynamic values (avg, min, max)
4. **Top N**: LIMIT + ORDER BY, correlated subqueries
5. **Joins**: INNER, LEFT, RIGHT, FULL; handle NULLs
6. **LIKE**: % and _ for text patterns
7. **CASE**: conditional increments, categorization
8. **Practice**: tables - employee, department, items

---

**End of Cheat Sheet**
