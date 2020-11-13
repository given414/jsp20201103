SELECT sysdate from dual;

SELECT LOWER(ename) AS name FROM employee;
SELECT UPPER(ename) As name FROM employee;
SELECT INITCAP(ename) AS name FROM employee;
SELECT INITCAP('oracle mania') AS name FROM dual;

SELECT ename, lower(ename), job, initcap(job)
FROM employee;

Select eno, ename, dno
from employee
where ename = 'scott';

Select eno, ename, dno
from employee
where lower(ename)= 'scott';

select eno, ename, dno
from employee
where INITCAP(ename) = 'Scott';

SELECT ename, LENGTH(ename) length FROM employee;
SELECT LENGTH('웹프로그래밍') FROM dual;

SELECT ename, LENGTH(ename) len FROM employee;
SELECT LENGTHB('웹프로그래밍') FROM dual;

select length('OracleMania'),length('오라클매니아')
from dual;

select lengthb('OracleMania'), lengthb('오라클매니아')
from dual;

SELECT CONCAT(ename, job) FROM empolyee;
SELECT ename || job FROM employee;
SELECT ename || ', ' || job FROM employee;

SELECT ename, SUBSTR(ename, 1, 2) FROM employee;
SELECT ename, SUBSTR(ename, -2, 2) FROM employee;

SELECT 'Oracle', 'mania', concat('Oracle','Mania')
FROM dual;

SELECT substr('Oaracle mania', 4, 3),
       substr('Oracle mania', -4, 3)
       from dual;
       
SELECT
    *
FROM employee
where substr(ename,-1,1)='N';

SELECT * FROM employee where substr(hiredate, 1, 2)='87';
SELECT * FROM employee
WHERE SUBSTR(TO_CHAR(hiredate, 'YYYY-MM-DD'), 1, 4) = '1987';

SELECT ename, INSTR(ename, 'AL') FROM employee;
SELECT ename, INSTR(ename, 'T', 2, 2) FROM employee;
SELECT INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM dual;

select INSTR('Oracle mania','a') from dual;

select INSTR('Oracle mania', 'a', 5, 2) from dual;

SELECT INSTR('오라클매니아','라') from dual;

select * from employee where instr(ename, 'R', 3, 1) = 3;

SELECT ename, LPAD(ename, 10, '#') FROM employee;
Select ename, RPAD(ename, 10, '#') FROM employee;

SELECT salary, LPAD(salary, 10, '*') from employee;
SELECT RPAD(salary, 10, '*') from employee;

SELECT TRIM(' ABC ') FROM dual;
SELECT RTRiM(' ABC ') FROM dual;
SELECT LTRiM(' ABC ') FROM dual;

SELECT '     Oracle mania      ',
        LTRIM('    Oracle mania    '),
        RTRIM('    Oracle mania    ')
from dual;

SELECT 'Oracle mania',
        TRIM('O'FROM'Oracle mania')
        from dual;
        
SELECT TRiM(' Oracle mania ')
from dual;


