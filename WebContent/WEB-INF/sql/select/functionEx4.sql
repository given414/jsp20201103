SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY') FROM dual;
SELECT TO_CHAR(sysdate, 'YY') FROM dual;
SELECT TO_CHAR(sysdate, 'mm') FROM dual;
SELECT TO_CHAR(sysdate, 'DD') FROM dual;
SELECT TO_CHAR(sysdate, 'MON') FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY-MM-DD') FROM dual;

select to_char(sysdate, 'HH') FROM dual;
select to_char(sysdate, 'HH24') FROM dual;
select to_char(sysdate, 'MI') FROM dual;
select to_char(sysdate, 'SS') FROM dual;
SELECT TO_CHAR(sysdate, 'HH:MI:SS') FROM dual;

SELECT TO_CHAR(sysdate, 'YYYY-MM-DD HH:MI:SS') FROM dual;

select ename, hiredate, to_char(hiredate, 'YY-MM'),
                        to_char(hiredate, 'YYYY/MM/DD DAY')
                        from employee;
                        
-- number to char
SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(9956789, '999,999,999') FROM dual;
SELECT TO_CHAR(9956789, '000,000,000') FROM dual;
SELECT TO_CHAR(9956789, 'L999,999,999') FROM dual;
SELECT TO_CHAR(9956789, 'L999,999,999.999') FROM dual;

SELECT ename, TO_CHAR(salary, 'L999,999,999') FROM employee;

-- char to date
SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('20201113', 'YYYYMMDD') FROM dual;
SELECT TO_DATE('20201113', 'YYYY-MM-DD') FROM dual;
select to_CHAR( to_date('2020-11-13 01:30:20', 'YYYY-MM-DD HH:MI:SS'), 'YYYY-MM-DD HH:MI:SS')
from dual;

--char to number
SElECT to_NUMBER('200000') FROM dual;
Select to_NUMBER('200,000', '999,999') FROM dual;






