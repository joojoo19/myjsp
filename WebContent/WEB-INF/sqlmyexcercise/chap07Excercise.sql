-- 실습 1 --
SELECT ename, job FROM employee
WHERE job = (SELECT job FROM employee WHERE eno = 7788);

-- 실습 2 --
SELECT ename, job FROM employee
WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);

-- 실습 3 --
SELECT ename, job, salary FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);

-- 실습 4 --
SELECT job, ROUND(AVG(salary),1) FROM employee
GROUP BY job HAVING ROUND(AVG(salary),1) 
= (SELECT MIN(ROUND(AVG(salary),1)) FROM employee GROUP BY job);

-- 실습 5 --
SELECT ename, salary, dno FROM employee
WHERE salary IN (SELECT MIN(salary) FROM employee GROUP BY dno);

-- 실습 6 --

-- 실습 7 --

-- 실습 8 --

-- 실습 9 --