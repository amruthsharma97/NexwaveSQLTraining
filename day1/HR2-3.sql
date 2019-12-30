SELECT
    department_id
FROM tbldepartments
minus
SELECT
    department_id
FROM tblemployees where job_id='SH_CLERK';



SELECT
    country_id, country_name
FROM tblcountries
minus
select
    distinct tblcountries.country_id, tblcountries.country_name
from tbldepartments 
inner JOIN 
tbllocations 
on tbldepartments.location_id=tbllocations.location_id
INNER JOIN
tblcountries 
on tbllocations.country_id = tblcountries.country_id;

SELECT
    distinct job_id,department_id
FROM tblemployees where department_id=10
UNION ALL
SELECT
    distinct job_id,department_id
FROM tblemployees WHERE department_id=50
UNION ALL
SELECT
    distinct job_id, department_id
FROM tblemployees where department_id=20;


SELECT
    employee_id,first_name,hire_date,job_id
FROM tblemployees;

