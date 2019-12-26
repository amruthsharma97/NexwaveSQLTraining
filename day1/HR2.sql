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