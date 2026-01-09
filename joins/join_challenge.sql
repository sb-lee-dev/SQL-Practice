-- California sales tax laws have changed and we need to alert
-- our customers to this through email.
-- What are the emails of the customers who live in California?
SELECT first_name, last_name, email, district FROM customer
JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California'

-- A customer walks in and is a huge fan of the actor "Nuck Wahlberg" and wants to know which movies he is in.
-- Get a list of all the movies "Nick Wahlberg" has been in
SELECT title, first_name, last_name 
FROM (
actor 
JOIN film_actor
ON film_actor.actor_id = actor.actor_id
) x
JOIN film f
ON f.film_id = x.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg'