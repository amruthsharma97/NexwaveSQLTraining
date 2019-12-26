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