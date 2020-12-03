-- ex01 --
CREATE TABLE emp_insert
AS 
SELECT * FROM employee WHERE 0=1;

-- ex02 --
SELECT * FROM emp_insert;

INSERT INTO emp_insert
VALUES (1, 'J.KIM', 'STUDENT', NULL, SYSDATE, 2700, 230, 10);

-- ex03 --
INSERT INTO emp_insert
VALUES (2, 'PENGSOO', 'STUDENT', NULL, TO_DATE('2020/12/01', 'YYYY/MM/DD'), 3000, 250, 20);

SELECT * FROM emp_insert;

-- ex04 --
CREATE TABLE emp_copy1
AS
SELECT * FROM employee;

-- ex05 --
UPDATE emp_copy1 
SET dno = 10
WHERE eno = 7788;

SELECT * FROM emp_copy1;

-- ex06 --
UPDATE emp_copy1
SET (job, salary) = (SELECT job, salary FROM emp_copy1 WHERE eno=7499)
WHERE eno = 7788;

-- ex07 --
UPDATE emp_copy1
SET dno = (SELECT dno FROM emp_copy1 WHERE eno = 7369)
WHERE job = (SELECT job FROM emp_copy1 WHERE eno = 7369);

-- ex08 --
CREATE TABLE dept_copy1
AS
SELECT * FROM department;

-- ex09 --
DELETE dept_copy1
WHERE dname = 'RESEARCH';

-- ex10 --
DELETE dept_copy1
WHERE dno IN(10, 40);

