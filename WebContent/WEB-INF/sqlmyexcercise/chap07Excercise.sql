-- �ǽ� 1 --
SELECT ename, job FROM employee
WHERE job = (SELECT job FROM employee WHERE eno = 7788);

-- �ǽ� 2 --
SELECT ename, job FROM employee
WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);

-- �ǽ� 3 --
SELECT ename, job, salary FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);

-- �ǽ� 4 --
SELECT job, ROUND(AVG(salary),1) FROM employee
GROUP BY job HAVING ROUND(AVG(salary),1) 
= (SELECT MIN(ROUND(AVG(salary),1)) FROM employee GROUP BY job);

-- �ǽ� 5 --
SELECT ename, salary, dno FROM employee
WHERE salary IN (SELECT MIN(salary) FROM employee GROUP BY dno);

-- �ǽ� 6 --

-- �ǽ� 7 --

-- �ǽ� 8 --

-- �ǽ� 9 --