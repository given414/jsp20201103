SELECT commission, nvl(commission, 0) from employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) fROm Employee;
select max(salary) from employee;

SELECT COUNT(salary) FROM employee;

SELECT * FROM employee;
SELECT COUNT(*) FROM employee;

select sum(salary) as "�޿��Ѿ�",
        avg(salary) as "�޿����",
        max(salary) as "�ִ�޿�",
        min(salary) as "�ּұ޿�"
FROM employee;

select max(hiredate),
        min(hiredate)
from employee;

select sum(commission) as "Ŀ�̼� �Ѿ�"
from employee;

select * from employee;
select count(*) from employee;

select count(commission) FRom employee;
select Sum(commission) from employee;
select max(commission) from employee;
select min(commission) from employee;
select avg(commission) from employee;

SELECT COUNT(*) as "����� ��"
from employee;

SELECT COUNT(COMMISSION) as "Ŀ�̼� �޴� ����� ��"
from employee;

SELECT COUNT(*) as "Ŀ�̼� �޴� ����� ��"
FROM employee
WHERE commission is not null;

select count(distinct job)as "���� ������ ����"
from employee;

SELECT COUNT(JOB) FROM employee;
SELECT DISTINCT(JOB) FROM employee; -- �ߺ� ����
SELECT COUNT(DISTINCT(JOB)) FROM employee;

SELECT SUM(salary) fROM employee;
SELECT enmae, MAX(salary) from employee;

SELECT ename FROM employee
