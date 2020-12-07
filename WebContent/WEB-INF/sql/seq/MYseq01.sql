CREATE TABLE post (
title VARCHAR2(255),
body VARCHAR2(255)
);

ALTER TABLE post
ADD id NUMBER PRIMARY KEY;

INSERT INTO post (id, title, body)
VALUES (1, 'abc', 'def');

INSERT INTO post (id, title, body)
VALUES (2, 'abc', 'def');

commit;

DELETE post;

-- sequence
CREATE SEQUENCE my_seq; -- 1부터 1씩 증가

INSERT INTO post (id, title, body)
VALUES (my_seq.nextval, 'abc', 'def');



CREATE SEQUENCE my_seq2
START WITH 100;

INSERT INTO post (id, title, body)
VALUES (my_seq2.nextval, 'abc', 'def');

CREATE SEQUENCE my_seq3
START WITH 1000
INCREMENT BY 100;

INSERT INTO post (id, title, body)
VALUES (my_seq3.nextval, 'abc', 'def');

SELECT * FROM post;

-- 삭제

DROP SEQUENCE my_seq;

-- 수정

ALTER SEQUENCE my_seq3
INCREMENT BY 1000;

SELECT my_seq3.currval FROM dual;
SELECT my_seq3.nextval FROM dual;

-- 자동증가 컬럼
CREATE TABLE t1(
id NUMBER GENERATED ALWAYS as IDENTITY(START WITH 1 INCREMENT BY 1),
name VARCHAR2(30)
);

INSERT INTO t1 (name) VALUES ('jane');
INSERT INTO t1 (name) VALUES ('judy');
INSERT INTO t1 (name) VALUES ('nic');

select * from t1;


