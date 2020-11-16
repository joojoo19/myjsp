-- �ǽ� 1 --
 SELECT SUBSTR(hiredate, 1, 2) �⵵,
        SUBSTR(hiredate, 4, 2) �� FROM employee;

-- �ǽ� 2 --
SELECT * FROM employee WHERE SUBSTR(hiredate, 4, 2) = '04';

-- �ǽ� 3 --
SELECT * FROM employee WHERE MOD(eno, 2) = 0;

-- �ǽ� 4 --
SELECT hiredate, TO_CHAR(hiredate, 'YY/MON/DD DY') FROM employee;

-- �ǽ� 5 --
SELECT TRUNC(sysdate - TO_DATE('2020/01/01', 'yyyy/mm/dd')) FROM dual;

-- �ǽ� 6 --

SELECT eno, ename, NVL2(manager, manager, 0) AS MANAGER FROM employee;

-- �ǽ� 7 --

SELECT eno, ename, job, salary, DECODE(job, 'ANALYST', salary+200,
                                            'SALESMAN', salary+180,
                                            'MANAGER', salary+150,
                                            'CLERK', salary+100,
                                            salary) AS UPDATE_SALARY FROM employee;