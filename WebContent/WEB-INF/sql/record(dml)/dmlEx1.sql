-- 데이터(record, row) 추가
-- INSERT INTO tname (col1, col2) VALUES (val1, val2);
-- 책 (227 쪽)
drop TABLE dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROM department
WHERE 0=1;

select * from dept_copy;

desc dept_copy;

INSERT INTO dept_copy -- (dno, dname, loc)
VALUES (10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO dept_copy (dno, dname, loc)
VALUES (20, 'DALLAS', 'RESEARCH');

INSERT INTO dept_copy (dname, dno, loc)
VALUES ('DALLAS', 20, 'RESEARCH'); -- 순서에 맞게 정확하게 넣어야 함

SELECT * FROM dept_copy;

COMMIT; --작업을 확정하는

-- NULL (값이 존재 하지 않는다는 의미)
-- 값을 안넣는 경우
-- 책 (228 쪽)
DESC dept_copy; 
INSERT INTO dept_copy (dno, dname)
VALUES (30, 'SALES');
SELECT * FROm dept_copy;

INSERT INTO dept_copy (dno, dname, loc)
VALUES (40, 'OPPERATION', NULL);

COMMIT;

-- ORACLE : NULL  ''<-- 비어있는 string
-- 책 (229 쪽)
DESC dept_copy;
INSERT INTO dept_copy
VALUES (50, 'COMPUTING', '');
INSERT INTO dept_copy 
VALUES (50, 'computing', ''); <-- computing 대문자로 수정 필요
select * from dept_copy;
COMMIT;




