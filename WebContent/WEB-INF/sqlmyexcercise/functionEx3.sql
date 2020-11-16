SELECT sysdate FROM dual;

SELECT sysdate -1 어제,
       sysdate 오늘,
       sysdate +1 내일 FROM dual;
       
SELECT ROUND(sysdate-hiredate) 근무일수 FROM employee;

SELECT hiredate, TRUNC(hiredate, 'MONTH') FROM employee;

SELECT ename, sysdate, hiredate, TRUNC(MONTHS_BETWEEN (SYSDATE, hiredate)) FROM employee;

SELECT ename, hiredate, ADD_MONTHS(hiredate, 6) FROM employee;

SELECT sysdate, NEXT_DAY(sysdate, '토요일') FROM dual;

SELECT ename, hiredate, LAST_DAY(hiredate) FROM employee;