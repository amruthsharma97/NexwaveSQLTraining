select * from customers;

select pack_id, speed, monthly_payment from packages;

SELECT strt_date, monthly_payment
FROM   packages 



select customer_id, first_name,last_name,main_phone_num,secondary_phone_num,pack_id from customers;

select first_name,last_name,join_date,monthly_discount,monthly_discount+monthly_discount*0.2,monthly_discount-monthly_discount*0.20 from customers;

select pack_id, speed, monthly_payment,strt_date,monthly_payment*12 as "YearlyPayment" from packages;


select concat(CONCAT(first_name,' '),last_name) as "FULL_NAME",concat(CONCAT(main_phone_num,', '),secondary_phone_num) as "CONTACT_DETAILS" from customers;


select distinct city from customers;

select distinct state from customers;

select distinct city,state from customers;

select concat(CONCAT(last_name,' '),state) as "CUSTOMER_AND_STATE" from customers;

select first_name as "FN",last_name as "LN",monthly_discount as "DC", city||' '||street as "FULL_ADDRESS" from customers;

select distinct monthly_discount from customers;

select distinct pack_id from customers;