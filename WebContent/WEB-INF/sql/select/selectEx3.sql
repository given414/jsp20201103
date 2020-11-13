SELECT
    *
FROM employee;

SELECT
    *
FROM employee WHERE ename= 'WARD';

SELECT
    *
FROM employee WHERE ename LIKE 'W%';

SELECT
    *
FROM employee WHERE ename LIKE '%D';

SELECT
    *
FROM employee WHERE ename LIKE '%D%';

SELECT
    *
FROM employee WHERE ename LIKE '_A__';

SELECT
    *
FROM employee WHERE ename LIKE '_A%';

SELECT
    *
FROM employee
WHERE ename like 'F%';

SELECT
    *
FROM employee
WHERE ename LIKE 'F%';

SELECT
    *
FROM employee
WHERE ename LIKE '%M%';

SELECT
    *
FROM employee
WHERE ename LIKE '%N';

SELECT
    *
FROM employee
WHERE ename LIKE '_A%';

SELECT
    *
FROM employee
WHERE ename LIKE '__A%';

SELECT
    *
FROM employee
WHERE commission = NULL;

SELECT
    *
FROM employee
WHERE commission IS NULL;

SELECT
    *
FROM employee
where commission is not null;

SELECT
    *
FROM employee
ORDER BY ename;

select * from employee order by eno;
select * from employee where salary >200 
order by salary;

SELECT dno, ename from employee
order by dno DESC, ename ASC;