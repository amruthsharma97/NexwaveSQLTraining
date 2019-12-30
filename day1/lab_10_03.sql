CREATE TABLE EMP(ID NUMBER(7),LAST_NAME VARCHAR(25),FIRST_NAME  VARCHAR(25),DEPT_ID NUMBER(7), CONSTRAINT con_dept_id_fk FOREIGN KEY (DEPT_ID) REFERENCES departments (department_id));

describe emp;


create table employees2(ID, FIRST_NAME, LAST_NAME, SALARY, DEPT_ID) as select employee_id,first_name,last_name,salary,department_id from employees;


DESCRIBE employees2;


alter table employees2 read only;


insert into employees2 select employee_id,first_name,last_name,salary,department_id from employees;


alter table employees2 read write;


drop table employees2;

CREATE VIEW EMPLOYEES_VU AS SELECT employee_id,last_name EMPLOYEE,department_id from employees;

select * from employees_vu;

select employee,department_id from employees_vu;

CREATE VIEW DEPT50 AS SELECT employee_id EMPNO,last_name EMPLOYEE,department_id DEPTNO from employees where department_id=50;

DESCRIBE dept50;

update employees set department_id=50 where employee_id=143;

select * from dept50;

SELECT employee_id EMPNO,last_name EMPLOYEE,department_id DEPTNO from employees where employee_id=120;

SELECT employee_id EMPNO,department_id DEPTNO from job_history where employee_id=143;

INSERT into dept50(empno,employee,deptno) values(143,'Matos',50);

drop view dept50;

UPDATE dept50 SET deptno=80 where employee='Matos';

UPDATE dept50 SET deptno=80 where employee='Weiss';

