-- �׷� �Լ� --

SELECT SUM(salary) AS "�޿��Ѿ�",
       AVG(salary) AS "�޿����",
       MAX(salary) AS "�ִ�޿�",
       MIN(salary) AS "�ּұ޿�" 
FROM employee;

SELECT MAX(hiredate), MIN(hiredate) FROM employee;

-- �׷� �Լ� NULL�� --

SELECT SUM(commission) AS "Ŀ�̼� �ѿ�" FROM employee;

SELECT COUNT(*) AS "����� ��" FROM employee;

SELECT COUNT(commission) AS "Ŀ�̼� �޴� ��� ��" FROM employee;

SELECT COUNT(*) AS "Ŀ�̼� �޴� ��� ��" FROM employee WHERE commission IS NOT NULL;

SELECT COUNT(distinct job) AS "���� ������ ����" FROM employee;

