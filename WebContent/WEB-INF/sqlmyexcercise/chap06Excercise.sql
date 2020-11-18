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
 SELECT e1.ename AS "Employee", e2.eno AS "Emp#", e1.manager AS "Manager", e2.ename AS "Mgr#"
 FROM employee e1, employee e2 WHERE e1.manager = e2.eno;
 
 -- 실습 8 --
 SELECT e1.ename AS "Employee", e2.eno AS "Emp#",  e1.manager AS "Manager", e2.ename AS "Mgr#"
  FROM employee e1, employee e2 WHERE e1.manager = e2.eno(+)
  ORDER BY e2.eno DESC;
 
 -- 실습 9 --
 SELECT e1.ename AS "이름", e1.dno AS "부서 번호", e2.ename AS "동료"
 FROM employee e1, employee e2 WHERE e1.dno = e2.dno
 AND e1.ename = 'SCOTT';
 
 -- 실습 10 --
 SELECT e2.ename AS ename, e2.hiredate FROM employee e1, employee e2
 WHERE e2.hiredate > e1.hiredate AND e1.ename = 'WARD'
 ORDER BY hiredate;
 
 -- 실습 11 --
 SELECT e1.ename AS ENAME, e1.hiredate AS HIREDATE, e2.ename AS ENAME, e2.hiredate AS HIREDATE
 FROM employee e1, employee e2 WHERE e1.manager = e2.eno
 AND e1.hiredate <= e2.hiredate;