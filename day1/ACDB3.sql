select customer_id, lower(first_name),UPPER(last_name) from customers where customer_id between 80 and 150;


select last_name,first_name,upper(SUBSTR(first_name,1,1))||upper(substr(last_name,1,3))||'@mymail.com' "Email Address" from customers;

select last_name,first_name,upper(SUBSTR(first_name,1,1))||upper(substr(last_name,length(last_name)-2,3))||'@mymail.com' "Email Address" from customers;

select last_name,length(last_name) from customers WHERE length(last_name)>9;

select first_name,last_name,main_phone_num,replace(main_phone_num,'515','$$$') "New Phone Number" from customers;

select first_name,last_name,main_phone_num,replace(substr(main_phone_num,1,3),'515','$$$')||substr(main_phone_num,4,12) "New Phone Number" from customers;

select first_name,monthly_discount,monthly_discount*1.197,round(monthly_discount*1.197),floor(monthly_discount*1.197),ceil(monthly_discount*1.197) from customers;


SELECT
    first_name,last_name,join_date,join_date-10,add_months(join_date,1),trunc(sysdate-join_date)
FROM customers;


select first_name,birth_date,EXTRACT(year from sysdate)-EXTRACT(year from birth_date) "Age" from customers where EXTRACT(year from sysdate)-EXTRACT(year from birth_date)>50;

select * from customers where extract(day from birth_date)||'-'||extract(month from birth_date)=extract(day from sysdate)||'-'||extract(month from sysdate);

select * from customers where extract(day from birth_date)=extract(day from sysdate)and extract(month from birth_date)=extract(month from sysdate);

select first_name,join_date,EXTRACT(year from sysdate)-EXTRACT(year from join_date) "Years past" from customers where EXTRACT(year from sysdate)-EXTRACT(year from join_date)=10;

select concat(first_name,TO_CHAR(join_date)),concat(last_name,TO_CHAR(monthly_discount)) from customers;

select last_name,concat(upper(state),customer_id),concat(join_date,birth_date) from customers WHERE substr(lower(last_name),1,1)='d' or substr(lower(last_name),1,1)='k';

select first_name,last_name,birth_date,nvl(main_phone_num,'N/A'),nvl(secondary_phone_num,'N/A') from customers;

select first_name,last_name,birth_date,nvl(main_phone_num,'N/A'),nvl(secondary_phone_num,'N/A') from customers where extract(year from birth_date)=1972;

SELECT
    first_name,
    last_name,
    monthly_discount,
    case 
    when monthly_discount between 0 and 10 then 'A'
    when monthly_discount between 11 and 20 then 'B'
    when monthly_discount between 21 and 30 then 'C'
    else 'D'
    end
FROM customers;


select min(last_name) from customers;

SELECT avg(monthly_payment) FROM packages;

select max(last_name) from customers;

select count(pack_id) from packages;

select count(*) from customers;

select distinct state from customers;

select count(distinct speed) from packages;

select distinct speed from packages;

select count(FAX) from customers;

select count(*) from customers where fax is null;

select max(monthly_discount),min(monthly_discount),round(avg(monthly_discount),2) from customers;

select state,count(customer_id) from customers group by state;

select speed,avg(monthly_payment) from packages group by speed;
