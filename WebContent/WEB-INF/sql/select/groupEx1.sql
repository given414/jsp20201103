SELECT commission, nvl(commission, 0) from employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) fROm Employee;
select max(salary) from employee;

SELECT COUNT(salary) FROM employee;

SELECT * FROM employee;
SELECT COUNT(*) FROM employee;

select sum(salary) as "급여총액",
        avg(salary) as "급여평균",
        max(salary) as "최대급여",
        min(salary) as "최소급여"
FROM employee;

select max(hiredate),
        min(hiredate)
from employee;

select sum(commission) as "커미션 총액"
from employee;

select * from employee;
select count(*) from employee;

select count(commission) FRom employee;
select Sum(commission) from employee;
select max(commission) from employee;
select min(commission) from employee;
select avg(commission) from employee;

SELECT COUNT(*) as "사원의 수"
from employee;

SELECT COUNT(COMMISSION) as "커미션 받는 사원의 수"
from employee;

SELECT COUNT(*) as "커미션 받는 사원의 수"
FROM employee
WHERE commission is not null;

select count(distinct job)as "직업 종류의 개수"
from employee;

SELECT COUNT(JOB) FROM employee;
SELECT DISTINCT(JOB) FROM employee; -- 중복 제거
SELECT COUNT(DISTINCT(JOB)) FROM employee;

SELECT SUM(salary) fROM employee;
SELECT enmae, MAX(salary) from employee;

SELECT ename FROM employee
