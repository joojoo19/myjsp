-- 그룹 함수 --

SELECT SUM(salary) AS "급여총액",
       AVG(salary) AS "급여평균",
       MAX(salary) AS "최대급여",
       MIN(salary) AS "최소급여" 
FROM employee;

SELECT MAX(hiredate), MIN(hiredate) FROM employee;

-- 그룹 함수 NULL값 --

SELECT SUM(commission) AS "커미션 총엑" FROM employee;

SELECT COUNT(*) AS "사원의 수" FROM employee;

SELECT COUNT(commission) AS "커미션 받는 사원 수" FROM employee;

SELECT COUNT(*) AS "커미션 받는 사원 수" FROM employee WHERE commission IS NOT NULL;

SELECT COUNT(distinct job) AS "직업 종류의 개수" FROM employee;

