-- ex01 --
DROP TABLE dept;

 CREATE TABLE dept (
 dno NUMBER(2), 
 dname VARCHAR2(14),   
 loc VARCHAR(13)      
 );
 
 -- ex02 --
 CREATE TABLE emp (
 eno NUMBER(4),
 ename VARCHAR2(10),
 dno NUMBER(2)
 );
 
 DESC emp;
 
 -- ex03 --
 ALTER TABLE emp
 MODIFY (ename VARCHAR2(25));
 
 DESC emp;
 
 -- ex04 --
 CREATE TABLE employee2(emp_id, name, sal, dept_id)
AS
SELECT eno, ename, salary, dno FROM employee;

SELECT * FROM employee2;

-- ex05 --
DROP TABLE emp;

DESC emp;

-- ex06 --
RENAME employee2 TO emp;

SELECT * FROM emp;

-- ex07 --
ALTER TABLE dept DROP COLUMN dname;
DESC dept;

-- ex08 --
ALTER TABLE dept RENAME COLUMN loc TO unused;
DESC dept;

-- ex09 -- 
ALTER TABLE dept DROP COLUMN unused;
DESC dept;

