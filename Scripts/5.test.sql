select * from title;

select *
  from employee
 where empno = 1003;

-- 해당 직책을 가지고 있는 사원목록을 검색
select empname, empno
  from employee e 
  join title t
    on e.title  = t.tno
 where tno = 5;
 
-- 해당 부서 소속된 사원목록을 검색
select empname, empno, deptno
  from employee e 
  join department d
    on e.dept = d.deptNo 
 where dept = 2;

-- 해당 직책별 사원수
select tname, count(*) as 사원수
  from title t left join employee e on t.tno = e.title 
 group by tno;
 
-- pass 길이 확인
-- 단방향 함수(Hash:MD5)
select password('aaafdsafjkdsafjksda;fjl;sa'), length(password('aaafdsafjkdsafjksda;fjl;sa')) from dual;

-- emp detail insert
INSERT INTO emp_detail(empno, pic, gender, hiredate, pass)
VALUES (?, ?, ?, ?, ?);

SELECT * FROM emp_detail;

DELETE FROM dmp+detail WHERE empno=1003;




