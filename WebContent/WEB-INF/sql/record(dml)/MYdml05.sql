 -- DML(Data Manipulation Language)
 -- INSERT, UPDATE, DELETE
 
 CREATE TABLE bank (
 name VARCHAR2(255),
 money NUMBER
 );
 
 INSERT INTO bank VALUES('ironman', 500);
 INSERT INTO bank VALUES('captain', 700);
 
 -- cap 100원 이체
 UPDATE bank
 SET money = 500
 WHERE name = 'captain';
 
  UPDATE bank
 SET money = 700
 WHERE name = 'ironman';

ROLLBACK;
 
 commit;
 
 SELECT * FROM bank;
 
 DELETE bank;
  