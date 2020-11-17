SELECT ename, salary, grade FROM employee, salgrade WHERE salary BETWEEN losal AND hisal;

-- 14, 4, 5
SELECT e.ename, d.dname, e.salary, s.grade FROM employee e, department d, salgrade s 
WHERE e.dno = d.dno AND salary BETWEEN losal AND hisal;

SELECT s.grade FROM employee e, salgrade s WHERE e.eno = 7788;

SELECT
    *
FROM salgrade;

SELECT s.grade FROM employee e, salgrade s WHERE e.eno = 7788;

SELECT s.grade, e.name FROM employee e, salgrade s
WHERE e.salary BETWEEN s.losal AND s.hisal AND e.eno = 7788;