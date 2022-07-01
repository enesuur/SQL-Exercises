SELECT length 
FROM film
WHERE length > 
(
    SELECT AVG(length) FROM film
)
ORDER BY length ASC;

SELECT COUNT(*) 
FROM film
WHERE rental_rate =
(
    SELECT MAX(rental_rate) 
    FROM film
);

SELECT title, rental_rate, replacement_cost
FROM film
WHERE rental_rate = 
(
    SELECT MIN(rental_rate) 
    FROM film
)
AND
replacement_cost=
(
    SELECT MIN(replacement_cost) 
    FROM film
);

SELECT COUNT(payment_id),(SELECT first_name FROM customer WHERE payment.customer_id=customer.customer_id) FROM payment 
GROUP BY customer_id 
ORDER BY COUNT(payment_id) DESC;
