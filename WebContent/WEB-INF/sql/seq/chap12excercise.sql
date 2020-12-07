-- ex01 --
CREATE SEQUENCE emp_seq
START WITH 1
INCREMENT BY 1
MAXVALUE 100000;

-- ex02 --
CREATE TABLE emp01 (
empno number(4) Primary key,
ename VARCHAR2(10),
hiredate date
);

INSERT INTO emp01
VALUES (emp_seq.nextval, 'julia', sysdate);

-- ex03 --
CREATE index idx_emp01_ename
ON emp01(ename);