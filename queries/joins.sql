-- JOIN Helps to combine tables


-- AS alias
-- This operator gets executed at the very end of a query
select amount as rental_price from payment -- The column gets renamed
select sum(amount) as net_revenue from payment

select customer_id, sum(amount) as total_spent from payment 
group by customer_id

select customer_id, sum(amount) as total_spent from payment 
group by customer_id
having sum(amount) > 100

select customer_id, amount as total_spent from payment 
where amount > 2

-- INNER JOIN
-- This will result with the set of records that match in both tables
select payment_id,payment.customer_id,first_name from payment
inner join customer
on payment.customer_id = customer.customer_id

-- FULL OUTER JOIN
-- This will result with the set of records from both tables
select * from customer
full outer join payment
on customer.customer_id = payment.customer_id

select * from customer
full outer join payment
on customer.customer_id = payment.customer_id
where customer.customer_id is null or payment.payment_id is null

-- LEFT OUTER JOIN
-- This will result in the set of records that are in the left table , if there is no match with the right table, the results are null
-- We do not return anything exclusive to table b
select film.film_id,title,inventory_id from film
left outer join inventory
on inventory.film_id = film.film_id
where inventory.film_id is null

-- UNION
-- Combines the result set of two or more SELECT statements
