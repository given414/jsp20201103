SELECT ename, salary, commission,
coalesce(commission, salary, 0)
from emplyee
order by job;

SELECT ename, dno, DECODE(dno, 'ACC', 20,'RES', 'DEF')
from employee;

SELECT ename, dno,
DECODE(dno, 10, 'ACCOUNTING',
            20, 'RESEARCH',
            30, 'SALES',
            40, 'OPERATIONS',
            'DEFAULT') AS DANME
            from employee
            order by dno;
            
select ename, salary, CASE WHEN salary >= 3000 then 'HIGH' 
                           WHEN salary >=0 THEN 'LOW'
                           ELSE '0'
                           END
FROM employee;

select ename, dno,
    CASE WHEN dno=10 THEN 'ACCOUNTING'
         WHEN dno=20 THEN 'RESEARCH'
         WHEN dno=30 THEN 'SALES'
         WHEN dno=40 THEN 'OPERATIONS'
         ELSE 'DEFAULT'
         END AS DNAME
FROM employee
order by dno;

SELECT eno, ename,
        NVL2(manager, manager, 0) AS MANAGER
        FROM employee;
        
SELECT eno, ename, job, salary,
    DECODE(JOB, 'ANALYST', salary+200,
            'SALESMAN', salary+180,
            'MANAGET', salary+150,
            'CLERK', salary+100, salary) as update_salary
FROM employee;
            
            