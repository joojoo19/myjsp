-- TABLE 이름 변경
-- RENAME
-- P.214
RENAME dept20 TO emp20;
DESC dept20;
DESC emp20;
SELECT * FROM emp20;

-- TABLE 제거
-- DROP TABLE
-- P.215
DROP TABLE emp20;
DESC emp20;

-- 테이블 데이터만 삭제
-- TRUNCATE TABLE
-- P.216
SELECT * FROM dept_second;
TRUNCATE TABLE dept_second;
