SELECT ename, dno FROM employee
WHERE dno = (SELECT dno FROM employee WHERE ename = 'SCOTT');

SELECT ename, job, salary FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);

SELECT dno, MIN(salary) FROM employee GROUP BY dno 
HAVING MIN(salary) > (SELECT MIN(salary) FROM employee WHERE dno = 30);
