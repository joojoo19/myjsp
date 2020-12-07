--제약사항추가

DROP TABLE emp_copy;

CREATE TABLE emp_copy
AS
SELECT * FROM employee;

SELECT * FROM user_constraints
WHERE table_name='EMPLOYEE';

SELECT * FROM user_constraints
WHERE table_name='EMP_COPY';

ALTER TABLE emp_copy
ADD PRIMARY KEY (eno);

DROP TABLE dept_copy;

CREATE TABLE dept_copy
AS 
SELECT * FROM department;


ALTER TABLE dept_copy
ADD CONSTRAINT dept_copy_dno_pk PRIMARY KEY(dno);

ALTER TABLE emp_copy
add CONSTRAINT emp_copy_dno_fk
foreign key(dno) REFERENCES dept_copy(dno);

ALTER TABLE emp_copy
MODIFY ename NOT NULL;

-- 제약사항 삭제
ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_ename;

ALTER TABLE dept_copy
DROP PRIMARY KEY;

SELECT * FROM user_constraints
WHERE table_name='DEPT_COPY';

ALTER TABLE dept_copy
DROP PRIMARY KEY CASCADE;

