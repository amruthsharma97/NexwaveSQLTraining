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