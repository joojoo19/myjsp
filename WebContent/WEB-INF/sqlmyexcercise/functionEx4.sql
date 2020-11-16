 SELECT ename, hiredate, TO_CHAR(hiredate,'yy-mm'),
        TO_CHAR(hiredate, 'yyyy/mm/dd DAY') FROM employee;
        
        
SELECT TO_CHAR(sysdate, 'yyyy/mm/dd, hh24:mi:ss') FROM dual;

SELECT ename, TO_CHAR(salary, '$999,999') FROM employee;

SELECT ename, hiredate FROM employee WHERE hiredate = '19810220';

SELECT ename, hiredate FROM employee WHERE hiredate = TO_DATE(19810220, 'YYYYMMDD');

SELECT '100,000' - '50,000' FROM dual;

SELECT TO_NUMBER('100,000', '999,999')-TO_NUMBER('50,000', '999,999') FROM dual;