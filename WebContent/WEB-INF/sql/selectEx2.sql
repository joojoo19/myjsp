SELECT department FROM employee WHERE dno =10;
SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission < 500;
SELECT * FROM employee WHERE salary >= 3000;
SELECT * FROM employee WHERE salary <= 2000;
SELECT * FROM employee WHERE ename <= 'G';
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH'; -- !=, <>, ^= 같지 않다
SELECT * FROM employee WHERE hiredate = '1981/02/20';
SELECT * FROM employee WHERE hiredate >= '1981/01/01' OR salary >3000;
SELECT * FROM employee WHERE ename > 'C' AND salary >2000 AND dno <> 30;

SELECT * FROM employee
WHERE salary BETWWEN 3000 AND 5000;
SELECT * FROM employee
WHERE salary >= 3000 AND salary <= 5000;

SELECT * FROM employee
WHERE hiredate BETWWEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
WHERE salary < 3000 or salary > 5000;
SELECT * FROM employee
WHERE salary NOT BETWWEN 3000 AND 5000;

SELECT * FROM employee
WHERE dno = 10 or dno = 20;

SELECT * FROM employee 
WHERE dno IN (10, 20);
SELECT * FROM employee 
WHERE dno NOT IN (10, 20);
 
 SELECT
 *
 FROM employee;
 
 SELECT
     *
 FROM department;