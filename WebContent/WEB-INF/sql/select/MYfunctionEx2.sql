SELECT 98.7654,
    ROUND(98.7654),
    ROUND(98.7654, 2),
    ROUND(98.7654, -1) FROM dual;
    
SELECT 98.7654, 
    TRUNC(98.7654),
    TRUNC(98.7654, 2),
    TRUNC(98.7654, -1) FROM dual;
 
 SELECT MOD(31, 2),
        MOD(31, 5),
        MOD(31, 8) FROM dual;
        
SELECT ename, salary, MOD(salary, 500) FROM employee;

