select a.first_name,a.last_name,a.pack_id,b.speed from customers A inner join packages B on a.pack_id=b.pack_id;

select a.first_name,a.last_name,a.pack_id,b.speed from customers A inner join packages B on a.pack_id=b.pack_id and b.pack_id in (22,27) order by a.last_name;

SELECT
    a.pack_id,a.speed,a.monthly_payment,b.sector_name
FROM packages A 
inner join
sectors B
on a.sector_id=b.sector_id;

SELECT
    a.first_name||' '|| a.last_name "Customer Name",b.pack_id,b.speed,b.monthly_payment,c.sector_name
FROM customers A 
inner join
packages B on a.pack_id=b.pack_id
inner join
sectors C
on b.sector_id=c.sector_id
and c.sector_name='Business';

SELECT
    a.first_name,a.last_name,b.pack_id,b.speed,c.sector_name
FROM customers A 
inner join
packages B on a.pack_id=b.pack_id
inner join
sectors C
on b.sector_id=c.sector_id
and c.sector_name='Private' and EXTRACT(year from a.join_date)=2006;

SELECT
    a.pack_id,a.speed,a.monthly_payment,b.grade_name
FROM packages A 
inner join
pack_grades B
on a.monthly_payment BETWEEN B.min_price and b.max_price;

select a.first_name,a.last_name,b.speed,b.monthly_payment from customers A inner join packages B on a.pack_id=b.pack_id;

select a.first_name,a.last_name,b.speed,b.monthly_payment from customers A left outer join packages B on a.pack_id=b.pack_id;

select a.first_name,a.last_name,b.speed,b.monthly_payment from customers A right outer join packages B on a.pack_id=b.pack_id;

select a.first_name,a.last_name,b.speed,b.monthly_payment from customers A full outer join packages B on a.pack_id=b.pack_id;

SELECT
    a.first_name,a.last_name,a.pack_id
FROM customers A
INNER JOIN 
(select pack_id from customers where first_name||' '||last_name='Amado Taylor') B
on a.pack_id=b.pack_id;

SELECT
    a.first_name,a.last_name,a.monthly_discount
FROM customers A
INNER JOIN 
(select monthly_discount from customers where customer_id=103) B
on a.monthly_discount=b.monthly_discount;


SELECT
    a.pack_id,a.speed
FROM packages A
inner join 
(select speed from packages where pack_id=10) B
on a.speed = b.speed;

SELECT
    a.first_name,a.last_name,a.city,a.state
FROM customers A
INNER JOIN
(SELECT
    state
FROM customers where customer_id=170) B
on a.state=b.state;

SELECT
    first_name,last_name,city,state
FROM customers where state=(SELECT
    state
FROM customers WHERE customer_id=170);

SELECT
    a.pack_id,a.speed,a.sector_id
FROM packages A
inner join 
(select sector_id from packages where pack_id=10) B
on a.sector_id = b.sector_id;

select pack_id,speed,sector_id from packages where sector_id=(select sector_id from packages where pack_id=10);

SELECT
    a.first_name,a.last_name,a.join_date
FROM customers A
INNER JOIN
(SELECT
    join_date
FROM customers where customer_id=540) B
on a.join_date>b.join_date;

SELECT
    first_name,last_name,join_date
FROM customers where join_date>(SELECT
    join_date
FROM customers WHERE customer_id=540);

SELECT
    a.first_name,a.last_name,a.join_date
FROM customers A
INNER JOIN
(SELECT
    join_date
FROM customers where customer_id=372) B
on extract(month from a.join_date)=extract(month from b.join_date) and extract(year from a.join_date)=extract(year from b.join_date);

SELECT
    first_name,last_name,join_date
FROM customers where extract(month from join_date)=(SELECT
    extract(month from join_date)
FROM customers WHERE customer_id=372) and extract(YEAR from join_date)=(SELECT
    extract(year from join_date)
FROM customers WHERE customer_id=372) ;

SELECT
    a.first_name,a.last_name,a.city,a.state,b.pack_id
FROM
(SELECT
    first_name,last_name,city,state,pack_id
FROM customers) A
INNER JOIN
(SELECT
    pack_id
FROM packages where speed='5Mbps') B
on a.pack_id=b.pack_id;

SELECT
    first_name,last_name,city,state,pack_id
FROM customers WHERE pack_id in(SELECT
    pack_id
FROM packages where speed='5Mbps');



SELECT
    a.pack_id,a.speed,a.strt_date
FROM packages A
inner join 
(select strt_date from packages where pack_id=7) B
on EXTRACT(year from a.strt_date)=EXTRACT(year from b.strt_date);

select pack_id,speed,strt_date from packages where EXTRACT(year from strt_date)=(select extract(year from strt_date) from packages where pack_id=7);

SELECT
    a.first_name,a.monthly_discount,b.pack_id,a.main_phone_num,a.secondary_phone_num,c.sector_name
FROM customers A 
inner join
packages B on a.pack_id=b.pack_id
inner join
sectors C
on b.sector_id=c.sector_id
and c.sector_name='Business';

select first_name,monthly_discount,pack_id,main_phone_num,secondary_phone_num from customers where pack_id in(select pack_id from packages where sector_id=(select sector_id from sectors where sector_name='Business'));

SELECT
    a.first_name,a.monthly_discount,b.pack_id
FROM
(SELECT
    first_name,monthly_discount,pack_id
FROM customers) A
INNER JOIN
(SELECT
    pack_id,monthly_payment
FROM packages where monthly_payment>(select AVG(monthly_payment) from packages)) B
on a.pack_id=b.pack_id;

SELECT
    first_name,monthly_discount,pack_id
FROM customers where pack_id in(select pack_id from packages where monthly_payment>(select AVG(monthly_payment) from packages));

SELECT
    *
FROM customers where birth_date=(select birth_date from customers where customer_id=179) and monthly_discount>(select monthly_discount from customers where customer_id=107);

select * from packages where speed=(select speed from packages where pack_id=30) and monthly_payment>(select monthly_payment from packages where pack_id=7);

select speed from packages where pack_id=30;

select max(monthly_payment) from packages;

select pack_id,speed,monthly_payment from packages where monthly_payment>(select max(monthly_payment) from packages where speed='5Mbps');

select pack_id,speed,monthly_payment from packages where monthly_payment>(select min(monthly_payment) from packages where speed='5Mbps');

select pack_id,speed,monthly_payment from packages where monthly_payment<(select min(monthly_payment) from packages where speed='5Mbps');

select first_name,monthly_discount,pack_id from customers where monthly_discount<(select avg(monthly_discount) from customers) and pack_id=(select pack_id from customers where first_name='Kevin');