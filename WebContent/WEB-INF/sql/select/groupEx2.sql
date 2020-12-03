SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee
GROUP BY job;

SELECT job, avg(salary) FROM employee
GROUP BY job;

SELECT job, avg(salary) FROM employee
WHERE job = 'CLERK'
GROUP BY job;

-- �׷��Լ��� WHERE���� �Ұ� --
SELECT job, avg(salary) FROM employee
WHERE AVG(salary) >= 3000
GROUP BY job;

SELECT job, avg(salary) FROM employee
GROUP BY job
HAVING avg(salary) >= 3000;