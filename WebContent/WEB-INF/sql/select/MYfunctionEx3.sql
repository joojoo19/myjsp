SELECT sysdate FROM dual;

SELECT sysdate -1 ����,
       sysdate ����,
       sysdate +1 ���� FROM dual;
       
SELECT ROUND(sysdate-hiredate) �ٹ��ϼ� FROM employee;

SELECT hiredate, TRUNC(hiredate, 'MONTH') FROM employee;

SELECT ename, sysdate, hiredate, TRUNC(MONTHS_BETWEEN (SYSDATE, hiredate)) FROM employee;

SELECT ename, hiredate, ADD_MONTHS(hiredate, 6) FROM employee;

SELECT sysdate, NEXT_DAY(sysdate, '�����') FROM dual;

SELECT ename, hiredate, LAST_DAY(hiredate) FROM employee;