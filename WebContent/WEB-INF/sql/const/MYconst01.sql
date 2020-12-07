-- 제약사항 constraint
-- not null : 컬럼의 값이 null은 안됨
-- unique : 유일한 값만 저장
-- check : 지정된 값(범위)만 가능
-- foreign key (외래키, 참조키) : 다른 table에 있는 값만 가능
-- primary key(주요키, 주키, 키) : not null + unique

-- not null
CREATE TABLE const01 (
name VARCHAR2(30) NOT NULL,
age NUMBER
);

INSERT INTO const01 
VALUES ('abc', 30);

INSERT INTO const01 
VALUES ('a', NULL);

INSERT INTO const01 
VALUES (' ', 30);

-- p.250
CREATE TABLE customer(
id VARCHAR2(20) NOT NULL,
pw VARCHAR2(20) NOT NULL,
name VARCHAR2(30) NOT NULL,
phone VARCHAR(30),
address VARCHAR(100)
);

INSERT INTO customer
VALUES (NULL, NULL, NULL, '010-0101-0101', 'SEOUL GANGNAMGU CHENGDAMDEARO 139');

-- unique
CREATE TABLE const02 (
email VARCHAR2(30) UNIQUE,
name VARCHAR2(30)
);

INSERT INTO const02
VALUES ('a', 'b');

INSERT INTO const02
VALUES ('a', 'c');

INSERT INTO const02
VALUES ('c', 'b');

INSERT INTO const02 (name)
VALUES ('c');

SELECT * FROM const02;

-- p.251
CREATE TABLE customer2 (
id VARCHAR2(20) UNIQUE,
pw VARCHAR2(20) NOT NULL,
name VARCHAR(20) NOT NULL,
phone VARCHAR(30),
address VARCHAR(100)
);

-- check
CREATE TABLE const03 (
name VARCHAR(30),
age NUMBER CHECK (age > 0)
);

INSERT INTO const03
VALUES ('a', 3);

INSERT INTO const03
VALUES ('a', 0);

INSERT INTO const03 (name)
VALUES ('a');

commit;

-- 제약사항 여러개 사용 가능
CREATE TABLE const04 (
email VARCHAR2(30) NOT NULL UNIQUE CHECK(email LIKE '%@%'),
name VARCHAR2(30)
);

INSERT INTO const04
VALUES (NULL, 'a');

INSERT INTO const04
VALUES ('a@', 'b');
