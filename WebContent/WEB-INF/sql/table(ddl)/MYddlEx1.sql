 -- table 만들기 --
 CREATE TABLE table1 (
 col1 NUMBER(3, 1), -- 수 3의 길이 소수점 1
 col2 VARCHAR2(6),  -- 가변길이 문자열 6byte까지 
 col3 CHAR(4),       -- 고정길이 문자열 4byte
 col4 DATE          -- 날짜시간
 );
 
DESC table1;

 -- data type
 -- 수, 문자열, 날짜시간
 -- NUMBER
 -- NUMBER(값)
 --   ex)값이 3이면 1000이상 표시 못함
 -- NUMBER(값1, 값2)
 --   ex)값1은 총길이, 값2는 소수점밑의 길이
 --      NUMBER(3, 2) : 10이상 표시 못함(10.00)
 
 -- 문자열
 -- VARCHAR2(값)
 -- 값 : byte수
-- CHAR(값) : 고정 길이
-- 값: byte수


-- 날짜시간
-- DATE


-- 예제 P.207
create table dept(
       dno number(2),
       dname varchar2(14),
       loc varchar2(13));
       
DESC dept;

-- 이미있는 테이블 복사
-- 1. 같은 구조의 table
-- 2. 옛table을 select -> 신table insert

CREATE TABLE NEW_TABLE
AS
SELECT * FROM OLD_TABLE;

-- 예제 P.207
CREATE TABLE DEPT_SECOND
AS
SELECT * FROM DEPARTMENT;

DESC dept_second;
SELECT * FROM dept_second;

-- 예제 P.208
CREATE TABLE dept20
as
SELECT eno, ename, salary*12 annsal
FROM employee WHERE dno = 20;

SELECT
    *
FROM dept20;

-- 예제 P.209
CREATE TABLE DEPT_THIRD
AS
SELECT dno, dname
FROM department WHERE 0=1;

SELECT
    *
FROM dept_third;