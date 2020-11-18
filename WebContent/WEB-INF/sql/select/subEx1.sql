SELECT manager FROM employee
WHERE eno = '7499';

SELECT ename FROM employee
WHERE eno = '7698';

SELECT ename FROM employee
WHERE eno = (SELECT manager FROM employee
WHERE eno = '7499');

-- 189p
SELECT ename, dno
from employee
WHERE dno = (select dno from employee where ename='SCOTT');

select ename, job, salary
from employee
where salary=( select min(salary) from employee);

SELECT dno, min(salary)
from employee
group by dno
having min(salary) > (select min(salary) from employee where dno=30);

--lecture
SELECT ename FROM employee
WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);


SELECT ename FROM employee
WHERE salary > (SELECT salary FROM employee); -- ����

--���� �� ���� ����
/*
IN        ���� �ϳ��� ������
ANY(SOME) �ϳ� �̻��� �����ϸ�
ALL       ��� �����ϸ�
*/

SELECT dno 
FROM department
WHERE dno <= 20;

SELECT ename
FROM employee
WHERE dno IN (SELECT dno 
              FROM department
              WHERE dno <= 20);
              
--192p
select eno, ename
from employee
where salary in (select min(salary)
                 from employee
                 group by dno);

--ȥ���غ���
-- �����ȣ�� 7788�� ��� ǥ���ϱ�
select ename, job
from employee
where job = (select job from employee WHERE eno = 7788);
--�����ȣ�� 7499�� ������� �޿��� ���� ��� ǥ��
select ename, job
from employee
where salary >(select salary from employee where eno = 7499);

--�ּұ޿��� �޴� ��� ǥ��
SELECT ename,job,salary
from employee
where salary = (select min(salary)from employee);

--��� �޿��� ���� ���� ����� ��� ������ ã�� ���ް� ��� �޿� ǥ���ϱ�
select job, round(avg(salary), 1)
FROM employee
group by job
having round(avg(salary), 1) = (select min(round(avg(salary),1))
                                from employee
                                group by job);

--�� �μ��� �ּ� �޿��� �޴� ��� ǥ���ϱ�
SELECT ename, salary, dno
from employee
where salary in (select min(salary)from employee group by dno);
                 
        