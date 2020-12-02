SELECT * FROM employee, department WHERE employee.dno = department.dno;

SELECT eno, ename, dname 
FROM employee, department WHERE employee.dno = department.dno AND eno = 7788;

SELECT eno, ename, dname, dno FROM employee, department 
WHERE employee.dno = department.dno AND eno = 7788;



SELECT d.dname FROM employee e NATURAL JOIN department d 
WHERE e.eno = 7499;

SELECT e.eno, e.ename, d.dname, e.dno FROM employee e NATURAL JOIN department d
WHERE e.eno = 7788;

SELECT e.eno, e.ename, d.dname, dno FROM employee e JOIN department d
USING(dno) WHERE e.eno = 7788;

SELECT e.eno, e.ename, d.dname, e.dno FROM employee e join department d
ON e.dno = d.dno WHERE e.eno = 7788;