SELECT * FROM employee WHERE ename LIKE 'W%'; -- W시작하는 직원 이름 --
SELECT * FROM employee WHERE ename LIKE '%D'; -- D로 끝나는 직원 이름 --
SELECT * FROM employee WHERE ename LIKE '%D%'; -- 중간에 D가 들어가는 직원 이름 --
SELECT * FROM employee WHERE ename LIKE '_A__'; -- 두번째에 A가 들어가고 4글자인 직원이름 --
SELECT * FROM employee WHERE ename LIKE '_A%'; -- 두번째에 A가 들어가는 직원이름 --

SELECT * From employee WHERE commission = NULL;
SELECT * From employee WHERE commission IS NULL;
SELECT * From employee WHERE commission IS NOT NULL;

SELECT * FROM employee
ORDER BY ename;

SELECT * FROM employee
ORDER BY eno;

SELECT * FROM employee WHERE salary > 2000
ORDER BY eno;

SELECT * FROM employee
ORDER BY eno ASC; -- 오름차순

SELECT * FROM employee
ORDER BY eno DESC; -- 내림차순

SELECT dno, ename FROM employee 
ORDER BY dno, ename;

SELECT dno, ename FROM employee 
ORDER BY dno DESC, ename ASC;
