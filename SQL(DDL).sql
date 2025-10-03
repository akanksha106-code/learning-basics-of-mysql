SHOW DATABASES;

/* ===============DDL COMMANDS ===========
CREATE
ALTER
DELETE
TRUNCATE
*/


/* CREATE DATABASE IF NOT EXISTS DEMO1;
SHOW DATABASES; */

/* ===========================================================
to create a table first select a database where table needs to be created:

USE database_name;

Creating Tables:
CREATE TABLE table_name(column1 datatype,
						column2 datatype ,
                        ....);
*/

/* DATATYPES ARE grouped in 5 cartegories , 
NUMERIC 
STRING
DATA AND TIME
SPARTIAL
JSON DATA TYPES

*/

CREATE DATABASE IF NOT EXISTS demo2;
USE demo2; 

CREATE TABLE IF NOT EXISTS student(first_name VARCHAR(15) ,
					last_name VARCHAR(15),
                    age INT,
                    city VARCHAR(100));
                    
SHOW TABLES; -- show all tables present in database
DESC student; -- describes the schema structure of table 
            
            
/* ALTER COMMAND is used to alter the schema of the databases
ALTER TABLE table_name 

------------------------------------------

Add a column :  ADD column_name datatype,
DROP a column : DROP column_name datatype,
Change the name of comumn : RENAME COLUMN current_name to new_name,
Change the datatype of comumn : MODIFY column_name to new_datatype,
Change the name of table : RENAME to new_name,
*/

-- ALTER TABLE student      
-- ADD dob DATE;     -- added column

DESC student;

-- ALTER TABLE student 
-- DROP COLUMN city ;   -- deleted column

DESC student;

-- ALTER TABLE student 
-- RENAME COLUMN age TO rollno ;     -- renamed column

DESC student ;

-- ALTER TABLE student
-- MODIFY last_name VARCHAR(50);   --- changed datatype of column

DESC student;

ALTER TABLE student 
RENAME TO employee;   -- renamed table name 

DESC employee;


