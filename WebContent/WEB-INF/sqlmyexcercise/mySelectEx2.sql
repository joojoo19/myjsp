-- 실습 2 --
SELECT ename, salary, salary*12+100 FROM employee ORDER BY salary*12+100 DESC;

-- 실습 3 --
SELECT ename, salary FROM employee WHERE salary >2000 ORDER BY salary DESC;

-- 실습 7 --
SELECT ename, dno FROM employee WHERE dno IN(20, 30) ORDER BY ename;

-- 실습 8 --
SELECT ename, salary, dno FROM employee WHERE salary BETWEEN 2000 AND 3000 
AND dno IN(20, 30) ORDER BY ename;

-- 실습 9 --
SELECT ename, hiredate FROM employee WHERE hiredate LIKE '81%';

-- 실습 10 --
SELECT ename, job FROM employee WHERE manager IS NULL;

-- 실습 11 --
SELECT ename, salary, commission FROM employee
WHERE commission IS NOT NULL ORDER BY commission DESC;

--실습 12 --
SELECT ename FROM employee WHERE ename LIKE '__R%';

--실습 15 --
SELECT ename FROM employee WHERE ename LIKE '%A%' AND ename LIKE '%E%';