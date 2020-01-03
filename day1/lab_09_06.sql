create table MY_EMPLOYEE(ID NUMBER(4) not null,LAST_NAME VARCHAR(25),FIRST_NAME VARCHAR(25),USERID VARCHAR2(8),SALARY number(9,2));

drop table MY_EMPLOYEE;

describe my_employee;

insert into my_employee values(1,'Patel','Ralph','rpatel',895);

insert into my_employee(ID,last_name,first_name,userid,salary) values(2,'Dancs','Betty','bdancs',860);

select * from my_employee;

insert into my_employee(ID,last_name,first_name,userid,salary) values(&ID,'&LAST_NAME','&FIRST_NAME','&USERID',&SALARY);

commit;


update my_employee set last_name='Drexler' where id=3;


delete from my_employee where first_name='Betty' and last_name='Dancs';


update my_employee set salary=1000 where salary<900;



SAVEPOINT Recent_update;


DELETE from my_employee;

select * from my_employee;


ROLLBACK to Recent_update;



