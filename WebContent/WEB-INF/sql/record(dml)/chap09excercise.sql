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