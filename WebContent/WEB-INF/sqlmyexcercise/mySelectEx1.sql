SELECT * FROM employee WHERE salary >= 1500;
SELECT * FROM employee WHERE dno = 10;
SELECT * FROM employee WHERE ename = 'SCOTT';
SELECT * FROM employee WHERE hiredate <= '1981/01/01';
SELECT * FROM employee WHERE dno = 10 and job ='MANAGER';
SELECT * FROM employee WHERE dno = 10 or job='MANAGER';
SELECT * FROM employee WHERE not dno = 10;
SELECT * FROM employee WHERE dno <> 10;
SELECT * FROM employee WHERE salary < 1000 or salary > 1500;
SELECT * FROM employee WHERE commission = 300 or commission = 500 or commission = 1400;

------------------------------------------------------------------------------------------

SELECT * FROM employee WHERE salary BETWEEN 1000 AND 1500;
SELECT * FROM employee WHERE salary>=1000 AND salary<=1500;
SELECT * FROM employee WHERE salary<1000 or salary>1500;
SELECT * FROM employee WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';
SELECT * FROM employee WHERE commission IN (300, 500, 1400);
SELECT * FROM employee WHERE commission=300 OR commission=500 OR commission=1400;
SELECT * FROM employee WHERE commission<>300 AND commission<>500 AND commission<>1400;
SELECT * FROM employee WHERE commission NOT IN (300, 500, 1400);
