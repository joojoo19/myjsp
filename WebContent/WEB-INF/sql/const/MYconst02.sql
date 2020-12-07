-- key : 각 레코드(row)를 유일하게 구분할 수 있는 컬럼(들)
-- primary key : 각 레코드를 유일하게 구분하는 컬럼
-- 변하지 않는 값을 primary key로 선택 -> 키 컬럼 새로 만들기 추천 (자동으로 늘어나는 정수)
-- NOT NULL, UNIQUE

CREATE TABLE const05 (
email VARCHAR2(30),
name VARCHAR2(30),
ssn VARCHAR2(30),
address VARCHAR2(30),
birth DATE
);

CREATE TABLE const06 (
id NUMBER PRIMARY KEY,
name VARCHAR2(30)
);

CREATE TABLE const07_emp
AS
SELECT * FROM employee;

CREATE TABLE const07_dep
AS
SELECT * FROM department;

INSERT INTO const07_emp (eno, ename, dno)
VALUES(8787, 'abc', 50);

commit;

CREATE TABLE const08_dep (
dno NUMBER(2) PRIMARY KEY,
dname VARCHAR2(14),
loc VARCHAR2(13)
);

INSERT INTO const08_dep
SELECT * FROM department;

CREATE TABLE const08_emp (
name VARCHAR2(30),
dno NUMBER(2) REFERENCES const08_dep
);

INSERT INTO const08_emp
VALUES ('a', 10);

INSERT INTO const08_emp
VALUES ('b', 50);

INSERT INTO const08_emp
VALUES ('c', NULL);

commit;