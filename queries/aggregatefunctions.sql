select min(replacement_cost), max(replacement_cost) from film;

select ROUND(AVG(replacement_cost),2) from film;

select rating, ROUND(AVG(replacement_cost),2) as averaged from film
group by rating

select sum(replacement_cost) from film;


-- GROUP BY - helps to aggregate columns
select customer_id, sum(amount) from payment
group by customer_id
order by sum(amount) desc;

select customer_id,staff_id,sum(amount) from payment
group by staff_id,customer_id
order by staff_id,customer_id;

select date(payment_date), sum(amount) from payment
group by date(payment_date)
order by sum(amount) desc 

-- HAVING: -> Comes after group by to do further filtering
select customer_id, sum(amount) from payment
group by customer_id
having sum(amount) > 100

select customer_id,sum(amount) from payment
where staff_id = 2
group by customer_id
having sum(amount) >= 110


-- QUIZ
select first_name,last_name, customer_id from customer
where first_name like 'E%' and address_id < 500
order by customer_id desc

