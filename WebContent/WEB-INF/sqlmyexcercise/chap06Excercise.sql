 -- �ǽ� 1 --
 SELECT e.ename, e.dno, d.dname FROM employee e, department d
 WHERE e.dno = d.dno AND e.ename='SCOTT';
 
 -- �ǽ� 2 --
 SELECT ename, dname, loc FROM employee e JOIN department d
 ON e.dno = d.dno;
 
 -- �ǽ� 3 --
 SELECT dno, job, loc FROM employee JOIN department
 USING(dno) WHERE dno = 10;
 
 -- �ǽ� 4 - 
 SELECT ename, dname, loc FROM employee NATURAL JOIN department
 WHERE commission>0;
 
 -- �ǽ� 5 --
 SELECT e.ename, d.dname FROM employee e, department d 
 WHERE e.dno=d.dno AND e.ename LIKE '%A%';
 
 -- �ǽ� 6 --
 SELECT e.ename, d.dname FROM employee e, department d
 WHERE e.dno = d.dno AND e.ename LIKE '%A%';
 
 -- �ǽ� 7 --
 
 