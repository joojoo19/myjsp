SELECT * FROM employee WHERE ename LIKE 'W%'; -- W�����ϴ� ���� �̸� --
SELECT * FROM employee WHERE ename LIKE '%D'; -- D�� ������ ���� �̸� --
SELECT * FROM employee WHERE ename LIKE '%D%'; -- �߰��� D�� ���� ���� �̸� --
SELECT * FROM employee WHERE ename LIKE '_A__'; -- �ι�°�� A�� ���� 4������ �����̸� --
SELECT * FROM employee WHERE ename LIKE '_A%'; -- �ι�°�� A�� ���� �����̸� --

SELECT * From employee WHERE commission = NULL;
SELECT * From employee WHERE commission IS NULL;
SELECT * From employee WHERE commission IS NOT NULL;

SELECT * FROM employee
ORDER BY ename;

SELECT * FROM employee
ORDER BY eno;

SELECT * FROM employee WHERE salary > 2000
ORDER BY eno;

SELECT * FROM employee
ORDER BY eno ASC; -- ��������

SELECT * FROM employee
ORDER BY eno DESC; -- ��������

SELECT dno, ename FROM employee 
ORDER BY dno, ename;

SELECT dno, ename FROM employee 
ORDER BY dno DESC, ename ASC;
