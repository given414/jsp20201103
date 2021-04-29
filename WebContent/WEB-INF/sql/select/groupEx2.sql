SELECT
    *
FROM employee;

Select MAX(salary) FROM employee;
SELECT MAX(salary) FROM employee
GROUP BY job;

Select dno as "�μ� ��ȣ", avg(salary) as "�޿� ���"
FROM employee group by dno;

select avg(salary) as "�޿� ���"
from employee
group by dno;

select dno, ename, avg(salary)
from employee 
group by dno;

select dno, job,count(*), sum(salary)
from employee
group by dno, job
order by dno, job;

SELECT job, avg(salary) FROM employee
GROUP BY job;

-- �׷��Լ��� where���� �Ұ�
SELECT job, avg(salary) fROm employee
WHERE avg(salary) >= 3000
GROUP BY job;

SELECT job, avg(salary) FROM employee
Group by job
HAVING avg(salary) >= 3000;

SELECT dno, max(salary)
from employee
group by dno
having max(salary) >= 3000;

SELECT job, count(*), SUM(salary)
from employee
WHERE job NOT LIKE '%MANAGER%'
group by job
having sum(salary) >= 5000
order by sum(salary);

select max(avg(salary))
from employee
group by dno;

--ȥ�� �غ���
SELECT MAX(salary) as "Maximum",
       MIN(salary) as "Minimum",
       SUM(salary) as "Sum",
       round(avg(salary)) as "Average"
       from employee;
       
       
SELECT job as "Job",
       max(salary) as "Maximum",
       min(salary) as "Minimum",
       sum(salary) as "Sum",
       round(avg(salary)) as "Average"
       from employee
       group by job;
       
SELECT job, count(*)
from employee
group by job;

select count(manager)
from employee;

SELECT max(salary)-min(salary) as diffrence
from employee;

SELECT job, min(salary)
from employee
group by job
having not min(salary)<2000
order by min(salary) desc;

SELECT dno,
      count(*) as "Number of People",
      round(avg(salary), 2) as "Salary"
      from employee
      group by dno
      order by dno asc;
      
SELECT decode(dno, 10, 'ACCOUNTING',
                   20, 'RESEARCH',
                   30, 'SALES',
                   40, 'OPERATIONS') as "dname",
       decode(dno, 10, 'NEWYORK',
                   20, 'DALLAS',
                   30, 'CHICAGO',
                   40, 'BOSTON') as "Location",
      count(*) as "Number of People",
      round(avg(salary))as "Salary"
      from employee
      group by dno;
      
SELECT job, dno,
        decode(dno, 10, sum(salary))as "�μ� 10",
        decode(dno, 20, sum(salary)) as "�μ� 20",
        decode(dno, 30, sum(salary)) as "�μ� 30",
        sum(salary) as "�Ѿ�"
        from employee
        group by job, dno
        order by dno;
SELECT
    *
FROM department;

