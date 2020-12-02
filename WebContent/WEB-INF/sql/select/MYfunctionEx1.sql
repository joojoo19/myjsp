SELECT 'Oracle mania', 
    UPPER('Oracle mania'),
    LOWER('Oracle mania'),
    INITCAP('Oracle mania')
FROM dual;

SELECT ename, LOWER(ename), job, INITCAP(job) FROM employee;

SELECT eno, ename, dno FROM employee WHERE ename = 'SCOTT';

SELECT eno, ename, dno FROM employee WHERE LOWER(ename) = 'SCOTT';

SELECT eno, ename, dno FROM employee WHERE INITCAP(ename) = 'SCOTT';


SELECT LENGTH('OracleMania'), LENGTH('����Ŭ�ŴϾ�') FROM daul;

SELECT LENGTHB('OracleMania'), LENGTHB('����Ŭ�ŴϾ�') FROM daul;

SELECT 'Oracle', 'mania', concat('Oracle', 'mania') FROM dual;

SELECT SEBSTR('Oracle mania', 4, 3), SEBSTR('Oracle mania', -4, 3) FROM dual;

SELECT * FROM employee WHERE SUBSTR(ename, -1, 1) = 'N';

SELECT * FROM employee WHERE SUBSTR(hiredate, 1, 2) = '87';

SELECT * FROM employee WHERE SUBSTR(TO_CHAR(hiredate, 'YYYY-MM-DD'), 1, 2) = '1987';

