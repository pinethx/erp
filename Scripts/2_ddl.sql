-- 내 스키마
DROP SCHEMA IF EXISTS erp;

-- 내 스키마
CREATE SCHEMA erp;

-- 직책
CREATE TABLE Title (
	tno   INT         NOT NULL COMMENT '직책코드', -- 직책코드
	tname VARCHAR(20) NOT NULL COMMENT '직책명' -- 직책명
)
COMMENT '직책';

-- 직책
ALTER TABLE Title
	ADD CONSTRAINT PK_Title -- 직책 기본키
		PRIMARY KEY (
			tno -- 직책코드
		);

-- 부서
CREATE TABLE department (
	deptno   INT         NOT NULL COMMENT '부서번호', -- 부서번호
	deptname VARCHAR(20) NOT NULL COMMENT '부서명', -- 부서명
	floor    INT         NULL     COMMENT '위치' -- 위치
)
COMMENT '부서';

-- 부서
ALTER TABLE department
	ADD CONSTRAINT PK_department -- 부서 기본키
		PRIMARY KEY (
			deptno -- 부서번호
		);

-- 사원
CREATE TABLE employee (
	empno   INT         NOT NULL COMMENT '사원번호', -- 사원번호
	empname VARCHAR(20) NOT NULL COMMENT '사원명', -- 사원명
	title   INT         NULL     COMMENT '직책', -- 직책
	manager INT         NULL     COMMENT '직속상사', -- 직속상사
	salary  INT         NULL     COMMENT '급여', -- 급여
	dept    INT         NULL     COMMENT '부서' -- 부서
)
COMMENT '사원';

-- 사원
ALTER TABLE employee
	ADD CONSTRAINT PK_employee -- 사원 기본키
		PRIMARY KEY (
			empno -- 사원번호
		);

-- 세부정보
CREATE TABLE emp_detail (
	empno    INT      NULL COMMENT '사원번호', -- 사원번호
	prc      LONGBLOB NULL COMMENT '증명사진', -- 증명사진
	gender   TINYINT  NULL COMMENT '성별', -- 성별
	hiredate DATE     NULL COMMENT '입사일' -- 입사일
)
COMMENT '세부정보';

-- 사원
ALTER TABLE employee
	ADD CONSTRAINT FK_Title_TO_employee -- 직책 -> 사원
		FOREIGN KEY (
			title -- 직책
		)
		REFERENCES Title ( -- 직책
			tno -- 직책코드
		);

-- 사원
ALTER TABLE employee
	ADD CONSTRAINT FK_employee_TO_employee -- 사원 -> 사원
		FOREIGN KEY (
			manager -- 직속상사
		)
		REFERENCES employee ( -- 사원
			empno -- 사원번호
		);

-- 사원
ALTER TABLE employee
	ADD CONSTRAINT FK_department_TO_employee -- 부서 -> 사원
		FOREIGN KEY (
			dept -- 부서
		)
		REFERENCES department ( -- 부서
			deptno -- 부서번호
		);

-- 세부정보
ALTER TABLE emp_detail
	ADD CONSTRAINT FK_employee_TO_emp_detail -- 사원 -> 세부정보
		FOREIGN KEY (
			empno -- 사원번호
		)
		REFERENCES employee ( -- 사원
			empno -- 사원번호
		);