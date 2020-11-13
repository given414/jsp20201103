SELECT ROUND(345.1456) FROM dual;
SELECT ROUND(345.1456, 0) FROM dual;
SElECT ROUND(345.1456, 1) FROM dual;
SELECT ROUND(345.1456, 2) FROM dual;
SELECT ROUND(345.1456, 3) FROM dual;


SELECT 98.7654, ROUND(98.7654),
                ROUND(98.7654, 2),
                 ROUND(98.7654, -1)
                 from dual;
                 
SELECT TRUNC(345.1456) FROM dual;
SELECT TRUNC(345.1456, 0) FROM dual;
SELECT TRUNC(345.1456, 1) FROM dual;
SELECT TRUNC(345.1456, 2) FROM dual;
SELECT TRUNC(345.1456, -1) FROM dual;

SELECT 98.7654, TRUNC(98.7654),
TRUNC(98.7654, 2),
TRUNC(98.7654, -1)
FROM dual;


SELECT MOD(135, 3) FROM dual;
SELECT MOD(135, 2) FROM dual;

SELECT MOD(31, 2),
        MOD(31, 5),
        MOD(31, 8)
        from dual;
        
SELECT ename, salary, MOD(salary, 500)
from employee;

SELECT CEIL(345.1456) FROM dual;
SELECT ABS(-15) FROM dual;
SELECT POWER(3,3) FROM dual;
SELECT SQRT(4) from dual;

