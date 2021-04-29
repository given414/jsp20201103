-- table 만들기
-- CREATE TABLE

CREATE TABLE table1 (
 col1 NUMBER(3, 1), --수 3의 길이고 소수밑 1
 col2 VARCHAR2(6),  -- 가변길이 문자열 6bytes까지
 col3 CHAR(4),      --고정길이 문자열 4bytes
 col4 DATE          --날짜 시간
);
SELECT * FROM department;
























-- 책 예제 (207쪽)
CREATE TABLE dept (
        dno NUMBER(2),
        dname VARCHAR2(14),
        loc VARCHAR2(13)
);
SELECT * FROM dept;
DESC dept;

-- 이미 있는 테이블 복사
-- 1. 같은 구조의  table 만들고
-- 2. 옛table을 select -> 신 table insert

CREATE TABLE new_table
AS
SELECT * FROM old_table;
DESC old_table;

-- 책 예제 (207)
CREATE table dept_second
AS
SELECT * FROM department;
DESC dept_second;
DESC department;
SELECT * FROM dept_second;

--책 예제 (208)
CREATE table dept20
as
select eno, dno, salary*12 annsal
from employee
where dno=20;

desc dept20;
desc employee;
select * from dept20;

--책 예제 (209)

CREATE TABLE dept_forth
as
SELECT dno, dname
FROM department
WHERE 0=1;
SELECT * FROM department;
SELECT * FROM dept_forth;









