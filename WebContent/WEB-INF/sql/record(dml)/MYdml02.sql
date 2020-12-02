CREATE TABLE data_type_ex1 (
num1 number,
num2 number(2),
num3 number(3,2));

DROP TABLE data_type_ex;

INSERT INTO data_type_ex1(num1)
VALUES(0);

INSERT INTO data_type_ex1(num1)
VALUES(0.01);

INSERT INTO data_type_ex1(num1)
VALUES(9999999999);

INSERT INTO data_type_ex1(num2)
VALUES(0);

INSERT INTO data_type_ex1(num2)
VALUES(0.1); -- 반올림

INSERT INTO data_type_ex1(num2)
VALUES(5.5); -- 반올림

INSERT INTO data_type_ex1(num2)
VALUES(99);

INSERT INTO data_type_ex1(num3)
VALUES(0.01);

INSERT INTO data_type_ex1(num3)
VALUES(0.015); -- 반올림

INSERT INTO data_type_ex1(num3)
VALUES(9.015); -- 반올림

--INSERT INTO data_type_ex1(num3)
--VALUES(12.013);

SELECT * FROM data_type_ex1;

commit;

DELETE FROM data_type_ex1
WHERE num3 = '5.5';

commit;

-- 문자열

CREATE TABLE data_type_ex2(
char1 char(3), -- 고정길이 3byte ('a' -> 'a  ') 빈스트링이 들어가서 byte를채움
vchar2 varchar2(6)); -- 가변길이 나머지 byte를 채우지 않음

INSERT INTO data_type_ex2(char1)
VALUES('');

INSERT INTO data_type_ex2(char1)
VALUES('a');

INSERT INTO data_type_ex2(char1)
VALUES('abc');

INSERT INTO data_type_ex2(vchar2)
VALUES('abc');

INSERT INTO data_type_ex2(vchar2)
VALUES('abcdef');

INSERT INTO data_type_ex2(vchar2)
VALUES('abcdefg');

SELECT * FROM data_type_ex2;

commit;