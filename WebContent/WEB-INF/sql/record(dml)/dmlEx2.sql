-- 
CREATE TABLE data_type_ex1
(
num1 NUMBER,
num2 NUMBER(2),
num3 NUMBER(3, 2) -- 3자리 숫자에 소숫점이 2자리
);
INSERT INTO data_type_ex1 (num1)
VALUES (0);
INSERT INTO data_type_ex1 (num1)
VALUES (0.01);
INSERT INTO data_type_ex1 (num1)
VALUES (99999999999);
INSERT INTO data_type_ex1 (num2)
VALUES (0);
INSERT INTO data_type_ex1 (num2)
VALUES (0.1); -- 0.1을 넣었지만 실제로 0이 들어감 소숫점은 넣을 수 없으니까...
INSERT INTO data_type_ex1 (num2)
VALUES (0.5); --반올림 됨
INSERT INTO data_type_ex1 (num2)
VALUES (5.5); -- 반올림 됨
INSERT INTO data_type_ex1 (num2)
VALUES (99);
INSERT INTO data_type_ex1 (num2)
VALUES (100); -- 99는 들어갔지만 num2를 두 자리 숫자만 허용되도록 정의 했기 때문에 100을 넣으면 오류가 발생
INSERT INTO data_type_ex1 (num3)
VALUES (0.01);
INSERT INTO data_type_ex1 (num3)
VALUES (0.015); -- 0.015를 넣었지만 소숫점 2자리로 제한되어있기 때문에 반올림되어서 0.02가 들어간다
INSERT INTO data_type_ex1 (num3)
VALUES (9.015); --반올림
INSERT INTO data_type_ex1 (num3)
VALUES (10.015); -- 3자리 숫자를 넘어버리기 때문에 오류

COMMIT;
SELECT * FROM data_type_ex1;

--문자열
CREATE TABLE data_type_ex2
( char1 CHAR(3), vchar2 VARCHAR2(6) );
INSERT INTO data_type_ex2
(char1) VALUES ('');
INSERT INTO data_type_ex2
(char1) VALUES ('a'); -- 빈 string이 뒤에 2개 붙어서 총 3byte의 길이의 값이 됨
INSERT INTO data_type_ex2
(char1) VALUES ('abc');
INSERT INTO data_type_ex2
(char1) VALUES ('abcd'); -- x


INSERT INTO data_type_ex2
(vchar2) VALUES ('abc'); -- varchar2 는 빈 string을 채우지 않음
INSERT INTO data_type_ex2
(vchar2) VALUES ('abcdef');
INSERT INTO data_type_ex2
(vchar2) VALUES ('abcdefg'); -- 길이 때문에 안들어감
--한글삽입
INSERT INTO data_type_ex2
(vchar2) VALUES ('한');
INSERT INTO data_type_ex2
(vchar2) VALUES ('한글');
INSERT INTO data_type_ex2
(vchar2) VALUES ('한글날'); -- 한글은 한 글자 당 3byte

COMMIT;
SELECT * FROM data_type_ex2;

-- 날짜
-- DATE
SELECT
    *
FROM data_type_ex3;
DROP TABLE data_type_ex3;
CREATE TABLE data_type_ex3
(
date1 DATE
);
SELECT sysdate FROM DUAL;
INSERT INTO data_type_ex3
VALUES (sysdate);
INSERT INTO data_type_ex3
VALUES ('2020/11/01');
INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-10-10', 'YYYY-MM-DD'));
INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-09-09 17:33:22', 'YYYY-MM-DD HH24:MI:SS'));
SELECT * FROM data_type_ex3;

SELECT TO_CHAR(date1, 'YYYY-MM-DD HH24:MI:SS') --date1 컬럼을 문자열로 바꾸는 내장함수 TO_CHAR
FROM data_type_ex3;

commit;


-- 책(229쪽)
CREATE TABlE emp_copy
AS
SELECT eno, ename, job, hiredate, dno
FROM employee
WHERE 0=1;

select * FROM emp_copy;

INSERT INTO emp_copy (eno, ename, job, hiredate, dno)
VALUES (7000, 'CANDY', 'MANAGER', '2012/05/01', 10);

INSERT INTO emp_copy
VALUES (7000, 'CANDY', 'MANAGER', TO_DATE('2012/05/01', 'YYYY-MM-DD'), 10);

INSERT INTO emp_copy
VALUEs (7000, 'CANDY', 'MANAGER', TO_DATE('2012/05/01', 'YYYY/MM/DD'), 10);

select * FROM emp_copy;

--책 (230p)
insert into emp_copy
VALUES (7010, 'TOM', 'MANAGER', TO_DATE('2012,05,01', 'YYYY,MM,DD'), 20);

INSERT INTO emp_copy
VALUES(7020, 'JERRY', 'SALESMAN', SYSDATE, 30);

SELECT
    *
FROM emp_copy;

SELECT * FROM dept_copy;
DROP TABLE dept_copy;

CREATE TABLE dept_copy
AS select * from department
WHERE 0=1;
select * from dept_copy;

INSERT INTO dept_copy
SELECT * FROM department;

COMMIT;