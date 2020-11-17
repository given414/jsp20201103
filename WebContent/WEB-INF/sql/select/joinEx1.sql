-- 14개행, 8개열
SELECT * FROM employee;
--4개행, 3개열
SELECT * FROM department;

SELECT
    *
FROM employee, department;

SELECT eno, ename,  dname FROM employee, department;
SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369 AND employee.dno = department.dno;

select * from employee, department
Where employee.dno = department.dno;

select eno, ename, dname
FROM employee, department
where employee.dno = department.dno
and eno =7788;

-- equi join
SELECT * FROM employee, department
WHERE employee.dno = department.dno;

SELECT* FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7369;

SELECT
    *
FROM employee e, department d
WHERE e.dno = d.dno
AND e.eno = 7369;

SELECT e.eno, e.ename, e.dno, d.dname
FROM employee e, department d
WHERE e.dno = d.dno;

--테이블에 별칭 사용하기
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e, department d
WHERE e.dno = d.dno
and e.eno=7788;

-- 혼자 해보기 1
SELECT e.ename, e.dno, d.dname
from employee e, department d
WHERE e.dno = d.dno
and e.ename = 'SCOTT';

--혼자 해보기 5
SELECT e.ename, d.dname
from employee e, department d
where e.dno = d.dno
and e.ename like '%A%';

-- join
SELECT * FROM employee natural join department;
SELECT * FROM employee natural join department
WHERE eno = 7782;

-- join using
SELECT * FROM employee join department USING (dNO);
SELECT * FROM employee join department USING (dNO)
WHERE eno = 7788;

-- join on
SELECT * FROM employee e join department d ON e.dno = d.dno;
SELECT * FROM employee e join department d ON e.dno = d.dno
WHERE eno = 7788;

--EQUI JOIN - JOIN ~ USING
SELECT e.eno, e.ename, d.dname, dno
from employee e join department d
using(dno)
where e.eno= 7788;

--EQUI JOIN - JOIN ~ON
SELECT e.eno, e.ename, d.dname, e.dno
from employee e join department d
on e.dno = d.dno
where e.eno 7788;



