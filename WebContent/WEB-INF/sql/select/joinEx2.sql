SELECT * FROM employee;
SELECT * FROM salgrade;

SELECT * FROM employee e, salgrade s;

SELECT * FROM employee e, salgrade s
WHERE e.salary BETWEEN s.losal AND s.hisal;