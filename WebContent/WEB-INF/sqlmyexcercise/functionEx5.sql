 -- NVLÇÔ¼ö --
 
 SELECT ename, salary, commission, NVL(commission, 0), salary+NVL(commission,0) FROM employee ORDER BY job;
 
 SELECT ename, salary, commission, NVL2(commission, salary*12+commission, salary*12)
 FROM employee ORDER BY job;
 
 -- COALESCE --
 
 SELECT ename, salary, commission, COALESCE(commission, salary, 0) FROM employee ORDER BY job;
 
 -- DECODE --
 
 SELECT ename, dno, DECODE(dno, 10, 'ACCOUNTING',
                                20, 'RESEARCH',
                                30, 'SALES',
                                40, 'OPERATIONS',
                                'DEFAULT') AS DNAME FROM employee ORDER BY dno;
                                
-- CASE --

SELECT ename, dno,
        CASE WHEN dno = 10 THEN 'ACCOUNTING'
             WHEN dno = 20 THEN 'RESEARCH'
             WHEN dno = 30 THEN 'SALES'
             WHEN dno = 40 THEN 'OPERATIONS'
             ELSE 'DEFAULT'
        END AS DNAME
    FROM employee ORDER BY dno;
                                