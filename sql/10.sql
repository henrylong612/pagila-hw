/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
SELECT
film.title AS title,
film_actor.film_id AS film_id,
count(actor_id) AS actor_count
FROM film_actor
LEFT JOIN film ON film_actor.film_id = film.film_id
GROUP BY film.title, film_actor.film_id
ORDER BY actor_count, film.title;
