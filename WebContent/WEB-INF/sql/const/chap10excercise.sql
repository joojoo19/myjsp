-- ex01 --
CREATE TABLE emp_sample
AS
SELECT * FROM employee WHERE 1=0;

ALTER TABLE emp_sample
ADD CONSTRAINT my_emp_pk PRIMARY KEY (eno);

-- ex02 --
CREATE TABLE dept_sample
AS 
SELECT *FROM department WHERE 1=0;

ALTER TABLE dept_sample
ADD CONSTRAINT my_dept_pk PRIMARY KEY (dno);

-- ex03 --
ALTER TABLE dept_sample
ADD CONSTRAINT my_emp_dept_fk FOREIGN KEY(dno) REFERENCES department(dno);

-- ex04 --
ALTER TABLE emp_sample
ADD CONSTRAINT emp_commission_min check (commission >0);



-- ex04 --