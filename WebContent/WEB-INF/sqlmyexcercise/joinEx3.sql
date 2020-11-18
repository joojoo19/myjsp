SELECT manager FROM employee;

SELECT employees.ename AS "사원이름", manager.ename AS "직속상관이름" 
FROM employee employees, employee manager 
WHERE employees.manager = manager.eno;

SELECT employees.ename || '의 직속 상관은' || manager.ename 
FROM employee employees JOIN employee manager 
ON employees.manager = manager.eno;

SELECT employees.ename || '의 직속 상관은' || manager.ename
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno(+);

SELECT employees.ename || '의 직속 상관은' || manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;