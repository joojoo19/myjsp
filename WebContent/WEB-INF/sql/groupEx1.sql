SELECT commission, NVL(commission, 0) FROM employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT COUNT(*) FROM employee;

SELECT COUNT(commission) FROM employee;
SELECT SUM(commission) FROM employee;
SELECT AVG(commission) FROM employee;
SELECT MAX(commission) FROM employee;
SELECT MIN(commission) FROM employee;

SELECT COUNT(job) FROM employee;
SELECT DISTINCT(job) FROM employee;
SELECT COUNT(DISRINCT(job)) FROM employee;

SELECT ename, salary FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);


