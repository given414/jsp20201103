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
SELECT employees.ename ||'의 직속 상관은'|| manager.ename
from employee employees join employee manager
on employees.manager=manager.eno(+);

SELECT employees.ename || '의 직속 상관은'|| manager.ename
FROM employee employees LEFT OUTER join employee manager
on employees.manager = manager.eno;

--혼자 해보기 p178
--특정 사원의 부서번호와 부서이름 출력하기
SELECT ename, e.dno, d.dname
from employee e, department d
where e.dno=d.dno
and e.ename='SCOTT';

--사원의 부선보호, 부서이름, 지역명 출력하기
select ename, dname, loc
from employee e join department d
ON e.dno=d.dno;

--10번 부서에 속하는 모든 담당 업무와 지역명 출력하기
select dno, job, loc
from employee inner join department
using(dno)
where dno =10;

--커미션을 받는 사원의 이름, 부서이름, 지역명 출력하기
select ename, dname, loc
from employee natural join department
WHERE commission>0;

-- 이름에 A가 포함된 모든 사원의 이름과 부서 이름 출력
SELECT ename, dname
from employee e, department d
WHERE e.dno=d.dno
AND e.ename like '%A%';

--NEWYORK에 근무하는 사원 출력하기
SELECT ename, job, dno, dname, loc
from employee natural join department
WHERE loc='NEW YORK';

-- 각 사원의 관리자 이름 및 관리자 번호 출력하기
SELECT emp.ename as "Employee",
       emp.manager as "Emp#",
       mgr.eno as "Manager",
       mgr.ename as "Mgr#"
FROM employee emp, employee mgr
where emp.manager=mgr.eno;

--관리자가 없는 사원을 포함하여 각 사원의 관리자 이름 출력하기
SELECT emp.ename as "Employee",
       emp.manager as "Emp#",
       mgr.eno as "Manager",
       mgr.ename as "Mgr#"
FROM employee emp, employee mgr
WHERE emp.manager = mgr.eno(+)
order by emp.eno desc;

--동일한 부서에서 근무하는 사원 출력하기
SELECT me.ename as 이름,
       me.dno as 부서번호,
       other.ename as 동료
from employee me, employee other
WHERE me.dno = other.dno
and me.ename='SCOTT'
and other.ename!='SCOTT';

-- WARD 사원보다 늦게 입사한 사원 출력하기
SELECT other.ename, other.hiredate
from employee ward, employee other
where other.hiredate > ward.hiredate
and ward.ename = 'WARD'
order by hiredate;

--관리자보다 먼저 입사한 사원 출력하기
SELECT other.ename
