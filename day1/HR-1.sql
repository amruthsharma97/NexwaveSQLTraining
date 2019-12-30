SELECT
    department_id
FROM departments
minus
SELECT
    department_id
FROM employees where job_id='ST_CLERK';



SELECT
    country_id, country_name
FROM countries
minus
select
    distinct countries.country_id, countries.country_name
from departments 
inner JOIN 
locations 
on departments.location_id=locations.location_id
INNER JOIN
countries 
on locations.country_id = countries.country_id;

SELECT
    distinct job_id,department_id
FROM employees where department_id=10
UNION ALL
SELECT
    distinct job_id,department_id
FROM employees WHERE department_id=50
UNION ALL
SELECT
    distinct job_id, department_id
FROM employees where department_id=20;



select employee_id,job_id from job_history
INTERSECT
select employee_id,job_id from employees;


select last_name,department_id,TO_CHAR(NULL) from employees
union
select TO_CHAR(NULL),department_id, department_name from departments;