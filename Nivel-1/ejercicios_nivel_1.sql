/*Examen final — Nivel 1
Pregunta 4 · Práctica*/

SELECT customer_id,
        first_name,
        last_name
FROM customer
WHERE last_name LIKE 'B%'  AND store_id = 1
ORDER BY last_name ASC
LIMIT 10;


/*Examen final — Nivel 1
Pregunta 6 · Práctica*/

desc payment;
desc customer;
                                                                         
/*
pk payment_id | fk customer_id || payment.customer_id = customer.customer_id
*/

SELECT  payment.payment_id,
		payment.amount,
        customer.first_name,
        customer.last_name
FROM payment
JOIN customer
	ON payment.customer_id = customer.customer_id
WHERE customer.last_name LIKE 'S%'
ORDER BY payment.amount DESC
LIMIT 10;

/*Examen final — Nivel 1
Pregunta 8 · Práctica*/

DESC film;
desc rental;
desc inventory;
desc customer;

/*
pk rental_id | fk inventory_id || rental.inventory_id = inventory.inventory_id
pk inventory_id | fk film_id   || inventory.film_id = film.film_id
pk rental_id | fk customer_id  || rental.customer_id = customer.customer_id
*/

SELECT customer.first_name,
		customer.last_name,
        rental.rental_id,
        rental.rental_date,
        film.title
FROM rental
JOIN inventory
	ON rental.inventory_id = inventory.inventory_id
JOIN film
	ON inventory.film_id = film.film_id
JOIN customer
	ON rental.customer_id = customer.customer_id
WHERE rental.rental_date >= '2005-05-01' AND rental.rental_date < '2005-06-01'
ORDER BY rental.rental_date DESC
LIMIT 5;
