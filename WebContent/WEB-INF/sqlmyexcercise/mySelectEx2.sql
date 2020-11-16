-- �ǽ� 2 --
SELECT ename, salary, salary*12+100 FROM employee ORDER BY salary*12+100 DESC;

-- �ǽ� 3 --
SELECT ename, salary FROM employee WHERE salary >2000 ORDER BY salary DESC;

-- �ǽ� 7 --
SELECT ename, dno FROM employee WHERE dno IN(20, 30) ORDER BY ename;

-- �ǽ� 8 --
SELECT ename, salary, dno FROM employee WHERE salary BETWEEN 2000 AND 3000 
AND dno IN(20, 30) ORDER BY ename;

-- �ǽ� 9 --
SELECT ename, hiredate FROM employee WHERE hiredate LIKE '81%';

-- �ǽ� 10 --
SELECT ename, job FROM employee WHERE manager IS NULL;

-- �ǽ� 11 --
SELECT ename, salary, commission FROM employee
WHERE commission IS NOT NULL ORDER BY commission DESC;

--�ǽ� 12 --
SELECT ename FROM employee WHERE ename LIKE '__R%';

--�ǽ� 15 --
SELECT ename FROM employee WHERE ename LIKE '%A%' AND ename LIKE '%E%';