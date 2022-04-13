CREATE DATABASE BANK;
USE BANK;
CREATE TABLE Employee(E_ID INT,E_NAME varchar(20),AGE INT,SALARY INT);
INSERT INTO Employee(E_ID,E_NAME,AGE,SALARY)VALUES(101,'ANU',22,9000);
INSERT INTO Employee(E_ID,E_NAME,AGE,SALARY)VALUES(102,'SHANE',29,8000);
INSERT INTO Employee(E_ID,E_NAME,AGE,SALARY)VALUES(103,'ROHAN',34,6000);
INSERT INTO Employee(E_ID,E_NAME,AGE,SALARY)VALUES(104,'SCOTT',44,10000);
INSERT INTO Employee(E_ID,E_NAME,AGE,SALARY)VALUES(105,'TIGER',35,8000);
INSERT INTO Employee(E_ID,E_NAME,AGE,SALARY)VALUES(106,'ALEX',27,7000);
INSERT INTO Employee(E_ID,E_NAME,AGE,SALARY)VALUES(107,'ABHI',29,8000);
SELECT*FROM Employee;
SELECT COUNT(E_NAME)FROM Employee;
SELECT MAX(AGE)FROM Employee;
SELECT MIN(AGE)FROM Employee;
SELECT SUM(AGE)FROM Employee;
SELECT AVG(AGE)FROM Employee;
SELECT AGE FROM Employee;
SELECT SALARY FROM Employee;
CREATE VIEW ANJU AS SELECT AGE FROM Employee;
SELECT*FROM ANJU;
SELECT*FROM Employee GROUP BY SALARY HAVING (SALARY)>8000;
SELECT*FROM Employee ORDER BY SALARY ASC;
SELECT*FROM Employee ORDER BY SALARY DESC;