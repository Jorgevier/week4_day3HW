SELECT *
FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id;


select title, fa.film_id
from film_actor as fa
INNER JOIN film
on fa.film_id = film.film_id


SELECT first_name, last_name, title
FROM film_actor
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
