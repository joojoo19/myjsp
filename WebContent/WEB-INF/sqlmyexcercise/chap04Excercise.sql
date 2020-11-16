-- 실습 1 --
 SELECT SUBSTR(hiredate, 1, 2) 년도,
        SUBSTR(hiredate, 4, 2) 달 FROM employee;

-- 실습 2 --
SELECT * FROM employee WHERE SUBSTR(hiredate, 4, 2) = '04';

-- 실습 3 --
SELECT * FROM employee WHERE MOD(eno, 2) = 0;

-- 실습 4 --
SELECT hiredate, TO_CHAR(hiredate, 'YY/MON/DD DY') FROM employee;

-- 실습 5 --
SELECT TRUNC(sysdate - TO_DATE('2020/01/01', 'yyyy/mm/dd')) FROM dual;

-- 실습 6 --

SELECT eno, ename, NVL2(manager, manager, 0) AS MANAGER FROM employee;

-- 실습 7 --

SELECT eno, ename, job, salary, DECODE(job, 'ANALYST', salary+200,
                                            'SALESMAN', salary+180,
                                            'MANAGER', salary+150,
                                            'CLERK', salary+100,
                                            salary) AS UPDATE_SALARY FROM employee;