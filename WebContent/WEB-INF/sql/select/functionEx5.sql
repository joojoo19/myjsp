SELECT * FROM employee;
SELECT ename, salary, commission, salary+commission AS SUM FROM employee;
SELECT ename, commission, NVL(commission, 0) FROM employee;
 
SELECT ename, commission, NVL2(commission, commission, 0) FROM employee;
 
SELECT nullif('a', 'a') FROM daul;
SELECT nullif('a', 'b') FROM daul;
 
SELECT COALESCE('a', 'b', null, 'c') FROM dual;
SELECT COALESCE(null, 'b', null, 'c') FROM dual;
SELECT COALESCE(null, null, 'd', 'c') FROM dual;

SELECT ename, dno, DECODE(dno, 10, 'ACC', 20, 'RES', 'def') FROM employee;

SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH'
                          WHEN salary >= 0 THEN 'LOW'
                          ELSE '0'
                     END     
FROM employee; 