-- 14�� 8�� --
SELECT * FROM employee;
-- 4�� 3�� --
SELECT * FROM department;
-- 14*4 56�� 11�� --
SELECT * FROM employee, department;

SELECT eno, ename, dno, dname FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname FROM employee, department
WHERE eno = 7369 AND employee.dno = department.dno;

-- equi join --
SELECT * FROM employee, department
WHERE employee.dno = department.dno;

SELECT * FROM employee, department
WHERE employee.dno = department.dno AND eno = 7369;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno AND e.eno=7369;

-- natural join --
SELECT * FROM employee natural join department; -- �÷��� Ÿ�԰� ���� ���ƾ���

SELECT * FROM employee natural join department
WHERE eno = 7782;

-- join using --

SELECT * FROM employee JOIN department USING(dno); --�÷����� ������ ��
SELECT * FROM employee JOIN department USING(dno)
WHERE eno = 7788;

-- join on --
SELECT * FROM employee e JOIN department d ON e.dno = d.dno; -- �÷��� �޶� ����
SELECT * FROM employee e JOIN department d ON e.dno = d.dno
WHERE eno = 7788;