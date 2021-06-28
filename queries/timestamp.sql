-- Extract()
-- Allows us to obtain a sub-component of a date value
-- 1. Year
-- 2. Month
-- 3. Day
-- 4. Week
-- 5. Quarter

-- Age() - Returns current age

--TO_CHAR() - Converts data types to text

select extract( year from payment_date) as my_year from payment
select extract( quarter from payment_date) as quarter from payment
select age(payment_date) as age from payment
select to_char(payment_date,'month yyyy') from payment
select to_char(payment_date,'mon/dd/yyyy') from payment