-- table구조 변경 --
-- ALTER TABLE
-- 컬럼 추가, 컬럼 변경, 컬럼 삭제

-- 컬럼 추가
-- ALTER TABLE table_name ADD(new_clo DATATYPE,,,);

-- 예제 P.210
ALTER TABLE dept20
ADD (birth date);

select * from dept20;

-- 컬럼 변경
-- ALTER TABLE tname MODIFY (colName type,,,);
-- 예제 P.211
ALTER TABLE dept20
MODIFY (ename VARCHAR2(30));

DESC dept20;

/*
INSERT INTO dept20
(ename) VALUES ('abcdefghij');
commit;
select * FROM dept20;
*/

-- 컬럼 삭제
-- ALTER TABLE tname DROP COLUMN col_name;
-- 예제 P.212
ALTER TABLE dept20
DROP COLUMN ename;

SELECT * FROM dept20;
