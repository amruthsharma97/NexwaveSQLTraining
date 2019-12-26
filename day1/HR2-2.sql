select lower(first_name) LOWER_CASE,UPPER(last_name) UPPER_CASE from tblemployees where employee_id BETWEEN 80 and 150;

select first_name,last_name from tblemployees where last_name='King';

select last_name,first_name,upper(SUBSTR(first_name,1,1))||upper(substr(last_name,1,3))||'@oracle.com' "Email Address" from tblemployees;

select last_name,first_name,upper(SUBSTR(first_name,1,1))||upper(substr(last_name,length(last_name)-2,3))||'@oracle.com' "Email Address" from tblemployees;

select concat(concat(first_name,' '),last_name) FULL_NAME from tblemployees;

select concat(concat(first_name,' '),concat(last_name,concat(' ',hire_date))) FULL_NAME from tblemployees;

select last_name from tblemployees where length(last_name)>8;

select first_name,last_name,phone_number,replace(phone_number,'515','815') "New Phone Number" from tblemployees;

select first_name,last_name,phone_number,replace(substr(phone_number,1,3),'515','815')||substr(phone_number,4,12) "New Phone Number" from tblemployees;

select first_name,salary,salary*1.12,round(salary*1.12),floor(salary*1.12) from tblemployees;

SELECT
    first_name,last_name,hire_date,hire_date-10,add_months(hire_date,1),trunc(sysdate-hire_date)
FROM tblemployees;

select first_name,last_name,hire_date,trunc(((sysdate-hire_date)/365.25)*12) Months_Worked,EXTRACT(YEAR from sysdate)-EXTRACT(year from hire_date) Years_Worked from tblemployees;

select first_name,last_name,hire_date,add_months(hire_date,12)-1 from tblemployees;

select first_name,hire_date,round(hire_date,'YYYY') NEAREST_YEAR,round(hire_date,'MONTH') NEAREST_MONTH from tblemployees;

SELECT first_name,extract(day from hire_date) DAY,TO_CHAR(hire_date, 'DAY') WEEK_DAY, extract(year from hire_date) YEAR from tblemployees; 

select UPPER(last_name) LAST_NAME,TO_CHAR(salary, '99,999.999') SALARY,TO_CHAR(hire_date,'DD/MM/YYYY') HIRE_DATE from tblemployees;

select first_name,last_name,salary,nvl(commission_pct,0) COMMISSION_PERCENTAGE from tblemployees;

select first_name,last_name,salary,nvl(TO_CHAR(commission_pct),'No Commission') COMMISSION_PERCENTAGE from tblemployees;

SELECT
    first_name,
    last_name,
    SALARY,
    case 
    when salary between 0 and 5000 then 'A'
    when salary between 5001 and 15000 then 'B'
    when salary between 15001 and 20000 then 'C'
    else 'D'
    end SALARY_GRADE
FROM tblemployees;


select min(last_name) from tblemployees;

select max(last_name) from tblemployees;

select count(*) from tblemployees;

select count(commission_pct) from tblemployees;

select count(*) from tblemployees where commission_pct is null;

select max(salary),min(salary),round(avg(salary),2) from tblemployees;

select department_id,round(avg(salary),2) from tblemployees group by department_id;

select department_id,round(avg(salary),2) from tblemployees where department_id between 50 and 80 group by department_id;

select job_id,count(employee_id) from tblemployees group by job_id;

select job_id,count(employee_id) from tblemployees where salary>10000 group by job_id;

select job_id,count(employee_id) from tblemployees group by job_id having count(employee_id)>2;

select department_id,job_id,avg(salary) from tblemployees group by department_id,job_id;

select manager_id,max(salary) from tblemployees group by manager_id;

select manager_id,max(salary) from tblemployees where salary>10000 group by manager_id;

select job_id,min(salary) from tblemployees group by job_id having MIN(salary)>7000;

select department_id,AVG(salary) from tblemployees where department_id between 20 and 80 group by department_id having avg(salary) >9000;