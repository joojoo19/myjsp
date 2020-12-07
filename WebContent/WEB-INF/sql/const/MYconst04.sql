 -- not null
 -- check
 -- UNIQUE(중복불가)
 -- primary key
 -- foreign key
 
 SELECT * FROM user_constraints;
 
 -- p.252
 CREATE TABLE customer_ex (
 id VARCHAR2(20) CONSTRAINT customer_id_uk UNIQUE, 
 pw VARCHAR2(20) CONSTRAINT customer_pw_nn NOT NULL,
 name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
 phone VARCHAR2(30),
 address VARCHAR2(100)
 );
 
SELECT * FROM user_constraints
WHERE constraint_name LIKE 'CUSTOMER%';
 
DROP TABLE customer_ex;

CREATE TABLE coustomer_ex (
 id VARCHAR2(20), 
 pw VARCHAR2(20) CONSTRAINT customer_pw NOT NULL,
 name VARCHAR2(20) CONSTRAINT customer_name NOT NULL,
 phone VARCHAR2(30),
 address VARCHAR2(100),
 CONSTRAINT customer_id PRIMARY KEY (id)
 );

SELECT * FROM user_constraints
WHERE constraint_name LIKE 'CUSTOMER%';

-- p.255
CREATE TABLE emp_second (
eno NUMBER(4) CONSTRAINT emp_seconde_eno_pk primary key,
ename VARCHAR2(10),
job VARCHAR2(9),
dno NUMBER(2) CONSTRAINT emp_seconde_dno_fk REFERENCES department
);

drop table emp_second;

CREATE TABLE emp_second(
eno number(4) CONSTRAINT emp_second_eno_pk PRIMARY KEY,
ename VARCHAR2(10),
salary number(7, 2) CONSTRAINT emp_second_salary_min check (salary>0)
);
 
 
 