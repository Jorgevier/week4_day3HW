-- Week 5 - Wednesday
-- Questions

-- 1. List all customers who live in Texas (use
-- JOINs)

SELECT sum(customer_id), city
FROM customer
INNER JOIN address
ON address.address_id = customer.address_id
INNER JOIN city
ON city.city_id = address.city_id
GROUP BY city
having city like '_exas'


-- looks like zero
-- double checked with GROUP BY city, ORDER BY city


-- 2. Get all payments above $6.99 with the Customer's Full
-- Name

SELECT first_name, last_name, amount
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;

--35 on this list





-- 3. Show all customers names who have made payments over $175(use
-- subqueries)

SELECT first_name, last_name, amount
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 175;



-- 4. List all customers that live in Nepal (use the city
-- table)

SELECT sum(customer_id), city
FROM customer
INNER JOIN address
ON address.address_id = customer.address_id
INNER JOIN city
ON city.city_id = address.city_id
GROUP BY city
having city like '_epal'


-- NONE



-- 5. Which staff member had the most
-- transactions?

SELECT first_name, last_name, sum(amount)
FROM staff
INNER JOIN payment
ON payment.staff_id = staff.staff_id
GROUP by first_name, last_name -- <- i dont know why staff doesnt work
ORDER BY sum(amount);

--confused on how to tell who has the most tranaction i didnt see a field for it
-- ran the select all and there are only 2 staff members in all the store



-- 6. How many movies of each rating are
-- there?

--im lost on this one


-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)

SELECT first_name, last_name, amount
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;

--35 of them


--8. How many free rentals did our stores give away?

SELECT amount
FROM payment
INNER JOIN staff
ON staff.staff_id = payment.staff_id
INNER JOIN store
ON store.store_id = staff.store_id
WHERE amount = 0;


--zero
