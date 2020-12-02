-- 데이터(record, row) 추가
-- INSERT INTO tname (col1, col2) VALUES (val1, val2);
-- P.227
CREATE TABLE dept_copy
AS
SELECT * FROM department WHERE 0=1;

INSERT INTO dept_copy 
VALUES (10, 'ACCOUNTING', 'NEW YORK');

SELECT * FROM dept_copy;

INSERT INTO dept_copy (dno, dname, loc)
VALUES (20, 'DALLAS', 'RESEARCH');

SELECT * FROM dept_copy;

commit;

-- NULL
INSERT INTO dept_copy (dno, dname)
VALUES (30, 'SALES');

SELECT * FROM dept_copy;

INSERT INTO dept_copy 
VALUES (40, 'OPERATIONS', NULL);

SELECT * FROM dept_copy;

-- oracle : NULL ''
-- P.229
INSERT INTO dept_copy
VALUES(50, 'COMPUTING', '');

SELECT * FROM dept_copy;
