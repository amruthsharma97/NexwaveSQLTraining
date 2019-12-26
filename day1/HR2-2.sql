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
