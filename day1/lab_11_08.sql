CREATE SEQUENCE DEPT_ID_SEQ START WITH 400 MAXVALUE 1000
  INCREMENT BY 10;


insert into dept(ID,NAME) values(DEPT_ID_SEQ.nextval,'Education');

insert into dept(ID,NAME) values(DEPT_ID_SEQ.nextval,'Administration');

select * from dept;


create index nunq_index_name on dept (name);


CREATE SYNONYM EMP2
FOR employees;

drop public SYNONYM emp2;

select * from emp2;
