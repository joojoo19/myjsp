-- GROUP BY --

SELECT dno AS "부서번호", AVG(salary) AS "급여평균" FROM employee
GROUP BY dno;

SELECT AVG(salary) AS "급여 평균" FROM employee GROUP BY dno;

SELECT dno, ename, AVG(salary) FROM employee GROUP BY dno;

SELECT dno, job, COUNT(*), SUM(salary) FROM employee
GROUP BY dno, job ORDER BY dno, job;

SELECT max(salary), min(salary), avg(salary), sum(salary) FROM employee WHERE job = 'CLERK';

-- HAVING --

SELECT dno, max(salary) FROM employee
GROUP BY dno
HAVING max(salary) >= 3000;

SELECT job, COUNT(*), SUM(salary) FROM employee
WHERE job NOT LIKE '%MANAGER%' GROUP BY job
HAVING SUM(salary) >= 5000 ORDER BY SUM(salary);

SELECT MAX(avg(salary)) FROM employee GROUP BY dno;

SELECT max(salary), min(salary), avg(salary), sum(salary)
FROM employee WHERE job = 'MANAGER';