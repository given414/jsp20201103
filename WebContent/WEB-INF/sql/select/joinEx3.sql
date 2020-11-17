SELECT * FROM employee e, department d;

SELECT * FROM employee e1, employee e2;

select * FROM employee where eno = 7369;
select * FROM employee where eno = 7902;

select * from employee e, department d
where e.dno = d.dno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

SELECT employees.ename as "����̸�", manager.ename as "���ӻ���̸�"
from employee employees, employee manager
where emplyees.manager=manager.eno;

select employees.ename ||'�� ���ӻ����' ||manager.ename
from employee employees join employee manager
on employees.manager=manager.eno;

SELECT e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno
And e1.eno = 7788; -- ������� �Ŵ��� �̸� ã��

--�Ŵ��� ��ȣ�� �̸�ã��
select e1.ename
from employee e1, employee e2
where e1.manager = e2.eno
And e1.manager = 7698;
