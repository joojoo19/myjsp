SELECT ename, dno FROM employee WHERE dno = '20';
SELECT dno FROM employee WHERE ename='SCOTT'

SELECT ename, dno FROM employee
WHERE dno = (SELECT dno FROM employee WHERE ename='SCOTT');

SELECT ename, job, salary
FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);

SELECT dno, MIN(salary)
FROM employee
Group BY dno HAVING MIN(salary) > (SELECT MIN(salary) 
                                   FROM employee WHERE dno = 30);
                                
-- 다중 행 서브 쿼리 --
-- IN --
SELECT MIN(salary) FROM employee
GROUP BY dno;

SELECT eno, ename, salary
FROM employee
WHERE salary IN (950, 800, 1300);

SELECT eno, ename, salary
FROM employee
WHERE salary IN (SELECT MIN(salary) 
                 FROM employee
                 GROUP BY dno);
                 
SELECT eno, ename, salary
FROM employee
WHERE (dno, salary) IN (SELECT dno, MIN(salary)
                        FROM employee
                        GROUP BY dno);
            
-- ANY, SOME --
SELECT eno, ename, job, salary
FROM employee
WHERE salary < any (1600, 1250, 1250, 1500);

SELECT salary
FROM employee
WHERE job = 'SALESMAN';

SELECT eno, ename, job, salary FROM employee
WHERE salary < any (SELECT salary
                    FROM employee
                    WHERE job = 'SALESMAN') 
AND job <> 'SALESMAN';

-- all --
SELECT eno, ename, job, salary
FROM employee WHERE salay < ALL (1600, 1250, 1250, 1500);

SELECT salary
FROM employee WHERE job = 'SALESMAN';

SELECT eno, ename, job, salary
FROM employee WHERE salary < ALL (SELECT salary
FROM employee WHERE job = 'SALESMAN')
AND job <> 'SALESMAN';