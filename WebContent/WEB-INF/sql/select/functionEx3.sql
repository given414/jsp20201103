SELECT sysdate FROM dual;
SELECT sysdate  + 1 FROM dual;
SELECT sysdate -1 FROM dual;

SELECT ename, hiredate, sysdate - hiredate FROM employee;
select ename, hiredate, ROUND(sysdate - hiredate) FROM employee;

SELECT sysdate from dual;

SELECT sysdate-1 어제,
        sysdate 오늘,
        sysdate + 1 내일
        from dual;

SELECT ROUND(sysdate) FROM dual;
select ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;


SELECT TRUNC(sysdate, 'YEAR') FROM dual;
select trunc(sysdate, 'MONTH') FROM dual;

select hiredate, TRUNC(HIREDATE, 'MONTH')
FROM employee;

SELECT ename,sysdate,hiredate,
    TRUNC(MONTHS_BETWEEN (SYSDATE, HIREDATE))
    from employee;
    
    SElect ename, hiredate,
    Add_MONTHS(HIREDATE, 6)
    from employee;
    
SELECT MONTHS_BETWEEN(SYSDATE,hiredate) FROM employee;

SELECT MONTHS_BETWEEN(To_DATE('2019-10-13', 'yyyy-mm-dd'), sysdate)
from dual;

SELECT ADD_MONTH(sysdate, 12) FROM dual;
SELECT ADD_MONTH(sysdate, 6) FROM dual;

select ename, hiredate, ADD_MONTHS(HIREDATE, 6)
from employee;

SELECT NEXT_DAY(sysdate, '토요일') FROM dual;
SELECT NEXT_DAY(sysdate, '금요일') FROM dual;
SELECT NEXT_Day(sysdate, 6) FROM dual;

SELECT * from employee;
SELECT LAST_DAY(sysdate) FROM dual;
SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) FROM dual;

SELECT sysdate, next_day(sysdate, '토요일') from dual;
SELECT ename, hiredate, Last_DAY(HIREDATE) from employee;
