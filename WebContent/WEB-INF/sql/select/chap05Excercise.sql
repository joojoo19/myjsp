-- �ǽ� 1 --
SELECT MAX(salary) AS Maximum, MIN(salary) AS Minimum, SUM(salary) AS Sum, ROUND(AVG(salary)) AS Avgrage
FROM employee;

-- �ǽ� 2 --
SELECT job, MAX(salary) AS Maximum, MIN(salary) AS Minimum, SUM(salary) AS Sum, ROUND(AVG(salary)) AS Avgrage
FROM employee GROUP BY job;

-- �ǽ� 3 --
SELECT job, COUNT(*) FROM employee GROUP BY job;

-- �ǽ� 4 --
SELECT COUNT(MANAGER) FROM employee;

-- �ǽ� 5 --
SELECT MAX(salary) - MIN(salary) AS DIFFERENCE FROM employee;

-- �ǽ� 6 --
SELECT job, MIN(salary) FROM employee GROUP BY job
HAVING NOT MIN(salary) <= 2000
ORDER BY MIN(salary) DESC;

-- �ǽ� 7 --
SELECT dno, COUNT(*) AS "Number of People", ROUND(AVG(salary), 2) AS "Salary" FROM employee
GROUP BY dno ORDER BY dno ASC;

-- �ǽ� 9 -- 
SELECT DECODE(dno, 10, 'ACCOUNTING',
                   20, 'RESEARCH',
                   30, 'SALES',
                   40, 'OPERATIONS') AS "dname",
        DECODE(dno, 10, 'NEW YORK',
                    20, 'DALLAS',
                    30, 'CHICAGO',
                    40, 'BOSTON') AS "Location",
        COUNT(*) AS "Number of People", ROUND(AVG(salary)) AS "Salary" FROM employee GROUP BY dno;