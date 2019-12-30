create table DEPT(ID NUMBER(7) CONSTRAINT con_dept_id_pk PRIMARY KEY,NAME VARCHAR2(25));

DESCRIBE dept;

insert into dept
select department_id,department_name from departments;

select * from dept;
