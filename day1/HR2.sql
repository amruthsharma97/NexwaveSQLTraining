select *
from tblemployees;

select a.department_id,b.department_name,a.manager_id from
(select department_id,manager_id from tblemployees) "A"
inner join
(select department_id,department_name from tbldepartments) "B"
on A.department_id=B.department_id;


select tblemployees.department_id,tbldepartments.department_name,tblemployees.manager_id as "MNG" from
tblemployees
inner join
tbldepartments
on tblemployees.department_id=tbldepartments.department_id;


select employee_id,first_name,last_name,phone_number,department_id from tblemployees;

select first_name,last_name,hire_date,salary,salary*1.2 as "ANNUAL_SAL" from tblemployees;

select first_name||' '||last_name "Name",phone_number||' - '|| email "CONTACT_DETAILS" from tblemployees;

select distinct manager_id from tblemployees;

select last_name||' '||job_id "EMPLOYEE_AND_TITLE" from tblemployees;


SELECT first_name "FN",last_name "LN", salary "SAL",'HD'||' '||hire_date "HD" from tblemployees;

select distinct salary from tblemployees;

select distinct department_id,job_id from tblemployees;

select first_name,department_id from tblemployees where last_name='De Haan';

select * from tblemployees where department_id=(select department_id from tbldepartments where department_name='Sales');


SELECT
    first_name,last_name,department_id,salary
FROM tblemployees
where salary>9700;

select * from tblemployees WHERE hire_date='01-JAN-1992';

select employee_id,first_name,job_id,department_id from tblemployees where department_id in(20,60,80);

select employee_id,first_name,job_id,department_id from tblemployees where department_id NOT in(20,60,80);

SELECT
    last_name,phone_number,salary,manager_id
FROM tblemployees where manager_id in(100,101,103);

select first_name,salary from tblemployees where first_name like '%e';

select last_name,department_id from tblemployees where last_name like '_i%';

select * from tblemployees where upper(last_name) like '%L%' or upper(last_name) like '%J%' OR upper(last_name) like '%H%' order by salary desc ;

select first_name,hire_date,salary,department_id from tblemployees where lower(first_name) not like '%a%' order by department_id;

select * from tblemployees where department_id is null;

select first_name||','||last_name,salary from tblemployees where salary not BETWEEN 7000 and 15000;

select first_name||','||last_name FULL_NAME,phone_number||' - '||email CONTACT ,salary SAL from tblemployees where salary BETWEEN 5000 and 10000;

select * from tblemployees where salary BETWEEN 800 and 600 and commission_pct is not null or department_id not in(80,90,100) and hire_date<'01-JAN-1990';

SELECT last_name,job_id,hire_date FROM tblemployees where hire_date BETWEEN '12-DEC-1995' AND '17-APR-1998';

SELECT first_name||' '||last_name FULL_NAME,hire_date,commission_pct,phone_number,salary FROM tblemployees WHERE salary > 10000 or phone_number like '__5' order by first_name DESC;

select last_name,salary from tblemployees where salary>12000;

select last_name,department_id from tblemployees where department_id in(50,80);

select last_name,department_id from tblemployees where department_id = 50 or department_id=80;

select last_name,salary from tblemployees where commission_pct is NULL;

select last_name,salary,manager_id from tblemployees where manager_id is not null;