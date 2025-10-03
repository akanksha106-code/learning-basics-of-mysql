/* my sql constraints 

CREATE TABLE table_name(column1 datatype constraint,
						column2 datatype constraint,
                        column3 datatype constraint, .......);
                        
CONSTRAINTS --

NOT NULL -- SHOULD NOT BE NULL
UNIQUE -- SHOULD BE UNIQUE 
DEFAULT -- SOME DEFAULT VALUES ARE STORED
CHECK -- SOME CONDITIONS ARE THERE TO check 
PRIMARY --  UNIQUE PRIMARY KEY TO IDENTIFY
FOREGIEN KEY -- TO CONNECT TABLES 

*/

-- CREATE DATABASE children;
USE children;
-- SHOW TABLES;

CREATE TABLE IF NOT EXISTS childs(ID INT PRIMARY KEY AUTO_INCREMENT ,
					FNAME VARCHAR(20) NOT NULL,
                    LNAME VARCHAR(20),
                    GENDER CHAR(1),
                    CITY VARCHAR(20) DEFAULT  "PUNE",
                    AGE INT CHECK(AGE <= 6));
                    
 -- SELECT *FROM child;

INSERT INTO childs( FNAME , LNAME , GENDER , CITY , AGE )
VALUES(  "RISHU" , "SINGH" , 'G' , "MUMBAI" , 4);
INSERT INTO childs( FNAME , LNAME , GENDER ,  AGE )
VALUES(  "RISHI" , "SINGH" , 'G' , 5);


DESC child;
-- SELECT *FROM child;
                    
                    
					
