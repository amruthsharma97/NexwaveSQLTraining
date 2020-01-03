select * from my_employee;


insert into my_employee(ID,last_name,first_name,userid,salary) values(&ID,'&LAST_NAME','&FIRST_NAME',to_char(lower(substr('&FIRST_NAME',1,1)||substr('&LAST_NAME',1,7))),&SALARY);

commit;