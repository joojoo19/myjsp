 -- 실습 1 --
 SELECT e.ename, e.dno, d.dname FROM employee e, department d
 WHERE e.dno = d.dno AND e.ename='SCOTT';
 
 -- 실습 2 --
 SELECT ename, dname, loc FROM employee e JOIN department d
 ON e.dno = d.dno;
 
 -- 실습 3 --
 SELECT dno, job, loc FROM employee JOIN department
 USING(dno) WHERE dno = 10;
 
 -- 실습 4 - 
 SELECT ename, dname, loc FROM employee NATURAL JOIN department
 WHERE commission>0;
 
 -- 실습 5 --
 SELECT e.ename, d.dname FROM employee e, department d 
 WHERE e.dno=d.dno AND e.ename LIKE '%A%';
 
 -- 실습 6 --
 SELECT e.ename, d.dname FROM employee e, department d
 WHERE e.dno = d.dno AND e.ename LIKE '%A%';
 
 -- 실습 7 --
 
 