select * from customers;

select pack_id, speed, monthly_payment from packages;

select customer_id, first_name,last_name,main_phone_num,secondary_phone_num,pack_id from customers;

select first_name,last_name,join_date,monthly_discount,monthly_discount+monthly_discount*0.2,monthly_discount-monthly_discount*0.20 from customers;

select first_name,last_name,join_date,monthly_discount,monthly_discount*1.2,monthly_discount*0.8 from customers;

select pack_id, speed, monthly_payment,strt_date,monthly_payment*12 as "YearlyPayment" from packages;


select concat(CONCAT(first_name,' '),last_name) as "FULL_NAME",concat(CONCAT(main_phone_num,', '),secondary_phone_num) as "CONTACT_DETAILS" from customers;


select distinct city from customers;

select distinct state from customers;

select distinct city,state from customers;

select concat(CONCAT(last_name,' '),state) as "CUSTOMER_AND_STATE" from customers;

select first_name as "FN",last_name as "LN",monthly_discount as "DC", city||' '||street as "FULL_ADDRESS" from customers;

select distinct monthly_discount from customers;

select distinct pack_id from customers;


select first_name,last_name,pack_id from customers where last_name='King';


select * from packages where speed='5Mbps';

select first_name,last_name,pack_id,monthly_discount from customers where monthly_discount<30 ;


select join_date from customers where join_date<'01-JAN-07';

select customer_id,first_name,state,city,pack_id from customers where not pack_id=27 and not pack_id=10 and not pack_id=3;

select last_name,main_phone_num,monthly_discount,pack_id from customers where customer_id=703 or customer_id=314 or customer_id=560;

select first_name,monthly_discount from customers where first_name like '%e';

select last_name,pack_id from customers where substr(last_name,2,1)='d';

select last_name,pack_id from customers where last_name like '_d%';

select * from customers where last_name like '%l%' or last_name like '%j%' or last_name like '%h%' order by monthly_discount desc;

select first_name,join_date,monthly_discount,pack_id from customers WHERE INSTR(LOWER(last_name), 'a') = 0;

select * from customers where pack_id is null;

select first_name||' '||last_name as "Full_Name", monthly_discount from customers where monthly_discount not BETWEEN 20 AND 30 order by "Full_Name";

select first_name||' '||last_name as "Full_Name", main_phone_num||' '||street as "CONTACTS", monthly_discount as "DC" from customers where monthly_discount BETWEEN 11 AND 27;

select * from customers where city='New York' and monthly_discount BETWEEN 30 and 40 or pack_id not in(8,19,30) and join_date<'01-JAN-2007';
