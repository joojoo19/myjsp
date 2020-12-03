 -- update
 -- 데이터를 변경하는 명령문
 -- UPDATE tname SET col1=val1, col2=val2,... WHERE
 
 -- p.232
 UPDATE dept_copy
 SET dname = 'HR';
 
 -- p.233
 UPDATE dept_copy
 SET dname = 'PROGRAMMING', loc='SEOUL'
 WHERE dno = 10;
 
 commit;
 
 UPDATE dept_copy
 SET loc=(SELECT loc FROM dept_copy 
 WHERE dno = 20
 )
 WHERE dno = 10;

-- p.234
UPDATE dept_copy
SET dname=(
SELECT dname FROM dept_copy WHERE dno=30
), loc=(
SELECT loc FROM dept_copy WHERE dno = 30
)
WHERE dno=10;

commit;

-- DELETE
-- DELETE [FROM] tname WHERE (WHERE절을 생략하면 모든 레코드 삭제)
-- p.235
DELETE FROM dept_copy
WHERE dno=10;

DELETE dept_copy;

SELECT * FROM dept_copy;

commit;

-- p.236
DROP TABLE emp_copy;

CREATE TABLE emp_copy
AS
SELECT * FROM employee;

DELETE emp_copy
WHERE dno = (SELECT dno FROM department
             WHERE dname = 'SALES');
             
SELECT * FROM emp_copy;

commit;
