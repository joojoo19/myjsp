 -- ex01 --
 SELECT ename, job FROM employee
 WHERE job = (SELECT job FROM employee WHERE eno = '7788');

 -- ex02 --
SELECT ename, job FROM employee WHERE salary > 
(SELECT salary FROM employee WHERE eno = '7499'); 

 -- ex03 --
 SELECT ename, job, salary FROM employee
 WHERE salary = (SELECT MIN(salary) FROM employee);
 
 -- ex04 -- 
 SELECT job, ROUND(AVG(salary), 1)
 FROM employee GROUP BY job
 HAVING ROUND(AVG(salary), 1) = ( SELECT MIN(ROUND(AVG(salary),1)) FROM employee GROUP BY job);
 
 -- ex05 -- 
 SELECT ename, salary, dno FROM employee
 WHERE salary IN (SELECT MIN(salary) FROM employee
 GROUP BY dno);
 
 -- ex06 --
 SELECT eno, ename, job, salary FROM employee
 WHERE salary < ANY (SELECT salary FROM employee
 WHERE job = 'ANALYST') AND job <> 'ANALYST';
 
 -- ex07 --
 SELECT ename FROM employee
 WHERE eno IN (SELECT eno FROM employee
 WHERE manager IS NULL);
 
 -- ex08 --
 SELECT ename FROM employee
 WHERE eno IN (SELECT eno FROM employee
 WHERE manager IS NOT NULL);
 
 -- ex09 --
 SELECT ename, hiredate FROM employee
 WHERE dno =
 (SELECT dno FROM employee WHERE ename = 'BLAKE')
 AND ename <> 'BLAKE';
 
 -- ex10 --
 SELECT eno, ename FROM employee
 WHERE salary > (SELECT AVG(salary) FROM employee)
 ORDER BY salary ASC;
 
 -- ex11 --
 SELECT eno, ename FROM employee
 WHERE dno IN (SELECT dno FROM employee WHERE ename LIKE '%K%');
 
 -- ex12 --
 SELECT ename, dno, job FROM employee
 WHERE dno = (SELECT dno FROM department WHERE loc = 'DALLAS');
 
 -- ex13 --
 SELECT ename, salary FROM employee WHERE manager =
 (SELECT eno FROM employee WHERE ename = 'KING');
 
 -- ex14 --
 SELECT dno, ename, job FROM employee WHERE dno =
 (SELECT dno FROM department WHERE dname = 'RESEARCH');
 
 -- ex15 --
 SELECT eno, ename, salary FROM employee
 WHERE salary > 
 (SELECT AVG(salary) FROM employee) AND dno IN
 (SELECT dno FROM employee WHERE ename LIKE '%M%');
 
 -- ex16 --
 SELECT job, AVG(salary) FROM employee
 GROUP BY job HAVING AVG(salary) = (SELECT MIN(AVG(salary)) FROM employee GROUP BY job);
 
 -- ex17 --
 SELECT ename FROM employee WHERE eno IN
 (SELECT manager FROM employee);
 