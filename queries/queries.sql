-- Basic Query
SELECT first_name,last_name,email FROM customer;

-- Select Distinct
SELECT DISTINCT rental_rate FROM film;

--count with distinct
SELECT COUNT(DISTINCT rating) from film;
SELECT COUNT(DISTINCT amount) FROM payment;

-- count
SELECT COUNT(*) FROM payment;

-- WHERE
SELECT * FROM customer
WHERE first_name = 'Jared';

-- Logical operators
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

select description from film
where title = 'Outlaw Hanky';

-- When you want to count
SELECT COUNT(*) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

-- ORDER BY
select * from customer
order by first_name desc;

select store_id,first_name,last_name from customer
order by store_id desc,first_name asc;

-- LIMIT
select  * from payment
order by payment_date
limit 5;

select  * from payment
where amount != 4.99
order by payment_date
limit 5

-- BETWEEN
select * from payment
where amount between 8 and 9;

select * from payment
where amount not between 8 and 9;

select * from payment
where payment_date between '2007-02-01' and '2007-02-15' --TAKE HEED OF TIME STAMP INFORMATION

-- IN and NOT IN
select * from payment
where amount in (0.99,1.98,1.99)

select * from payment
where amount not in (0.99,1.98,1.99)

-- LIKE and ILIKE '%' '_'
select * from customer
where first_name like 'J%' and last_name like 'S%'

select * from customer
where first_name ilike 'j%' and last_name ilike 's%'

select * from customer
where first_name ilike '%er%'

select * from customer
where first_name ilike '_her%'