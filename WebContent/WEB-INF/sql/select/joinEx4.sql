--inner join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

--inner join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
from employee e1 JOIN employee e2
ON e1.manager = e2.eno;

-- left outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno;

-- left outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno(+);

-- right outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 RIGHT OUTER JOIN employee e2
ON e1.manager = e2.eno;

-- right outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager(+) = e2.eno;

-- full outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 FULL OUTER JOIN employee e2
ON e1.manager = e2.eno;

select * from employee;

--176p
SELECT employees.ename ||'�� ���� �����'|| manager.ename
from employee employees join employee manager
on employees.manager=manager.eno(+);

SELECT employees.ename || '�� ���� �����'|| manager.ename
FROM employee employees LEFT OUTER join employee manager
on employees.manager = manager.eno;

--ȥ�� �غ��� p178
--Ư�� ����� �μ���ȣ�� �μ��̸� ����ϱ�
SELECT ename, e.dno, d.dname
from employee e, department d
where e.dno=d.dno
and e.ename='SCOTT';

--����� �μ���ȣ, �μ��̸�, ������ ����ϱ�
select ename, dname, loc
from employee e join department d
ON e.dno=d.dno;

--10�� �μ��� ���ϴ� ��� ��� ������ ������ ����ϱ�
select dno, job, loc
from employee inner join department
using(dno)
where dno =10;

--Ŀ�̼��� �޴� ����� �̸�, �μ��̸�, ������ ����ϱ�
select ename, dname, loc
from employee natural join department
WHERE commission>0;

-- �̸��� A�� ���Ե� ��� ����� �̸��� �μ� �̸� ���
SELECT ename, dname
from employee e, department d
WHERE e.dno=d.dno
AND e.ename like '%A%';

--NEWYORK�� �ٹ��ϴ� ��� ����ϱ�
SELECT ename, job, dno, dname, loc
from employee natural join department
WHERE loc='NEW YORK';

-- �� ����� ������ �̸� �� ������ ��ȣ ����ϱ�
SELECT emp.ename as "Employee",
       emp.manager as "Emp#",
       mgr.eno as "Manager",
       mgr.ename as "Mgr#"
FROM employee emp, employee mgr
where emp.manager=mgr.eno;

--�����ڰ� ���� ����� �����Ͽ� �� ����� ������ �̸� ����ϱ�
SELECT emp.ename as "Employee",
       emp.manager as "Emp#",
       mgr.eno as "Manager",
       mgr.ename as "Mgr#"
FROM employee emp, employee mgr
WHERE emp.manager = mgr.eno(+)
order by emp.eno desc;

--������ �μ����� �ٹ��ϴ� ��� ����ϱ�
SELECT me.ename as �̸�,
       me.dno as �μ���ȣ,
       other.ename as ����
from employee me, employee other
WHERE me.dno = other.dno
and me.ename='SCOTT'
and other.ename!='SCOTT';

-- WARD ������� �ʰ� �Ի��� ��� ����ϱ�
SELECT other.ename, other.hiredate
from employee ward, employee other
where other.hiredate > ward.hiredate
and ward.ename = 'WARD'
order by hiredate;

--�����ں��� ���� �Ի��� ��� ����ϱ�
SELECT other.ename
