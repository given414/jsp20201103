SELECT * FROM employee;
SELECT * FROM salgrade;

SELECT
    *
FROM employee e, salgrade s;

SELECT * 
FROM employee e, salgrade s
WHERE e.salary BETWEEn s.losal AND s.hisal;

select ename, salary, grade
from employee, salgrade
where salary between losal and hisal;

select e.ename, d.dname, e.salary, s.grade
from employee e, department d, salgrade s
WHERE e.dno = d.dno
and salary between losal and hisal;

SELECT e.ename FROM employee e, salgrade s
where e.salary between s.losal and s.hisal
and s.grade = 4;