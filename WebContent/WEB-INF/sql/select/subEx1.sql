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
WHERE salary > (SELECT salary FROM employee); -- 에러

--다중 행 서브 쿼리
/*
IN        값이 하나라도 있으면
ANY(SOME) 하나 이상이 만족하면
ALL       모두 만족하면
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

--혼자해보기
-- 사원번호가 7788인 사원 표시하기
select ename, job
from employee
where job = (select job from employee WHERE eno = 7788);
--사원번호가 7499인 사원보다 급여가 많은 사원 표시
select ename, job
from employee
where salary >(select salary from employee where eno = 7499);

--최소급여를 받는 사원 표시
SELECT ename,job,salary
from employee
where salary = (select min(salary)from employee);

--평균 급여가 가장 적은 사원의 담당 업무를 찾아 직급과 평균 급여 표시하기
select job, round(avg(salary), 1)
FROM employee
group by job
having round(avg(salary), 1) = (select min(round(avg(salary),1))
                                from employee
                                group by job);

--각 부서의 최소 급여를 받는 사원 표시하기
SELECT ename, salary, dno
from employee
where salary in (select min(salary)from employee group by dno);
                 
        