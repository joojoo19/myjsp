-- 실습 1 --
SELECT ename, salary, salary + 300 AS "인상된 급여" FROM employee; 

-- 실습 4 --
SELECT ename, dno FROM employee WHERE eno = 7788;

-- 실습 5 --
SELECT ename, salary FROM employee WHERE salary NOT BETWEEN 2000 AND 3000;

-- 실습 6 --
SELECT ename, job, hiredate FROM employee WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

-- 실습 14 --
SELECT ename, job, salary FROM employee WHERE job IN ('CLERK', 'SALESMAN') AND salary NOT IN(1600, 950, 1300);

-- 실습 15 --
SELECT ename, salary, commission FROM employee WHERE commission >= 500;