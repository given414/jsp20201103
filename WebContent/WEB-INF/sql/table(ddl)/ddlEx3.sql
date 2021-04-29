--TABLE 이름 변경
--RENAME
--책(214 쪽)
RENAME dept20 TO emp20;
DESC dept20;
DESC emp20;
SELECT * FROM emp20;

--TABLE 제거
--DROP TABLE
--책(215 쪽)
DROP TABLE emp20;
DESC emp20;
DROP TABLE dept_thrid;
DESC dept_thrid;

-- 테이블의 데이터만 삭제
--TRUNCATE TABLE
--책 (216쪽)
SELECT * FROM dept_second;
TRUNCATE TABLE dept_second;

--책 (220 쪽)
--1
DROP TABLE dept;
CREATE TABLE dept(
                  DNO number(2),
                  DNAME varchar2(14),
                  LOC varchar2(13)
                  );
desc dept;                  
--2
DROP TABLE emp;
CREATE TABLE emp(
                 ENO number(4),
                 ENAME varchar2(10),
                 DNO number(2)
                 );
desc emp;       

--3
ALTER TABLE emp
modify ENAME varchar2(25);
desc emp;

--4
CREATE TABLE EMPLOYEE2 (
                  EMP_ID,
                  NAME,
                  SAL,
                  DEPT_ID
                  )
AS
SELECT ENO, ENAME, SALARY, DNO FROM EMPLOYEE;
desc employee2

--5
DROP TABLE emp;

--6
RENAME EMPLOYEE2 to EMP;

--7
ALTER TABLE DEPT
DROP COLUMN DANME;
desc dept;
