-- UPDATE
-- 데이터를 변경하는 명령문
-- UPDATE tname SET col1=val1, col2=val2,,, WHERE 
DROP TABLE dept_copy;

CREATE TABLE dept_copy
AS 
SELECT * FROM department;

SELECT * FROM dept_copy;

--책 (232쪽)
UPDATE dept_copy
SET dname='HR';

--책 (233쪽)
UPDATE dept_copy
SET dname='PROGRAMMING', loc='SEOUL'
WHERE dno=10;
SELECT * FROM dept_copy;

COMMIT;

UPDATE dept_copy
SET loc=(
        SELECT loc
        FROM dept_copy
        WHERE dno=20
)
WHERE dno=10;

--책 234쪽
UPDATE dept_copy
SET dname=(SELECT dname 
           FROM dept_copy
           WHERE dno=30
           ), 
    loc=(SELECT loc 
         FROM dept_copy
         WHERE dno=30
        )
WHERE dno=10;

SELECT * FROM dept_copy;

COMMIT;

--242쪽
--01 EMP 테이블의 구조만 복사하여 EMP_INSERT란 이름의 빈 테이블을 만드시오
DROP TABLE emp_INSERT;
CREATE TABLE EMP_INSERT
AS
SELECT * FROM employee
WHERE 0=1;
select * from emp_insert;

--02 본인을 EMP_INSERT 테이블에 추가하되 SYSDATE를 이용해서 입사일을 오늘로 입력하시오
INSERT INTO emp_insert
VALUES (1, 'JEONGSH', 'STUDENT', '', SYSDATE, 2700, 230, 10);

--03 EMP_INSERT 테이블에 옆 사람을 추가하되 TO_DATE함수를 이용해서 입사일을 어제로 입력하시오
INSERT INTO emp_INSERT
VALUES (2, 'LEEJH', 'SOLDIER', null, to_date(sysdate-1), 1150, null, 20);
INSERT INTO EMP_INSERT
VALUES (2, 'LEEJH', 'SOLDIER', null, to_date(SYSDATE-1, 'YYYY/MM/DD HH24:MI:SS'), 1150, null, 20);

--04 employee 테이블의 구조와 내용을 복사하여 EMP_COPY란 이름의 테이블을 만드시오
DROP TABLE EMP_COPY;
CREATE TABLE EMP_COPY
AS
SELECT * FROM employee;
SELECT * FROM EMP_COPY;
SELECT * FROM employee;

--05 사원번호가 7788인 사원의 부서번호를 10번으로 수정하시오
UPDATE EMP_COPY
SET dno=10
WHERE eno=7788;

--06 사원번호 7788의 담당 업무 및 급여를 사원번호 7499의 담당 업무 및 급여와 일치하도록 갱신하시오
UPDATE EMP_COPY
SET JOB=(select JOB FROM emp_copy WHERE eno=7499),
    SALARY=(select SALARY FROM emp_COPY WHERE eno=7499)
WHERE eno=7788;
UPDATE EMP_COPY
SET (JOB, SALARY)=(SELECT JOB, SALARY FROM EMP_COPY WHERE eno=7499)
WHERE eno=7788;

--07 사원번호 7369와 업무가 동일한 모든 사원의 부서번호를 사원 7369의 현재부서번호로 갱신하시오
UPDATE EMP_COPY
SET DNO=(SELECT DNO FROM EMP_COPY WHERE eno=7369)
WHERE JOB=(SELECT JOB FROM EMP_COPY WHERE eno=7369);