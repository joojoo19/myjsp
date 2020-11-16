DESCRIBE employee;
DESC employee;

--- function Ex1 --

SELECT * FROM dual;
SELECT sysdate FROM dual;
SELECT sysdate FROM employee;

SELECT LOWER(ename) AS ename FROM employee;
SELECT UPPER(ename) AS ename FROM employee;
SELECT INITCAP(ename) AS ename FROM employee;
SELECT INITCAP('oracle mania') AS name FROM dual;

SELECT * FROM employee WHERE LOWER(ename) LIKE '%a%';

SELECT ename, LENGTH(ename) length FROM employee;

SELECT LENGTH('웹프로그래밍') FROM dual;

SELECT ename, LENGTHB(ename) len FROM employee;

SELECT LENGTHB('웹프로그래밍') FROM dual;

SELECT CONCAT(ename, job) FROM employee;
SELECT ename || job FROM employee;
SELECT ename || ',' || job FROm employee;

SELECT ename, SUBSTR(ename, 1, 2) FROM employee;

SELECT ename, SUBSTR(ename, -2, 2) FROM employee;

SELECT ename, INSTR(ename, 'A') FROM employee;
SELECT ename, INSTR(ename, 'S', 2, 2) FROM employee;
SELECT INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM dual;

SELECT ename, LPAD(ename, 10, '#') FROM employee;
SELECT ename, RPAD(ename, 10, '*') FROM employee;

SELECT TRIM('     ABC     ') FROM dual;
SELECT RTRIM('     ABC     ') FROM dual;
SELECT LTRIM('     ABC     ') FROM dual;