SELECT manager FROM employee;

SELECT employees.ename AS "����̸�", manager.ename AS "���ӻ���̸�" 
FROM employee employees, employee manager 
WHERE employees.manager = manager.eno;

SELECT employees.ename || '�� ���� �����' || manager.ename 
FROM employee employees JOIN employee manager 
ON employees.manager = manager.eno;

SELECT employees.ename || '�� ���� �����' || manager.ename
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno(+);

SELECT employees.ename || '�� ���� �����' || manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;