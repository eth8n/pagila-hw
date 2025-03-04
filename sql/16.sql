/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customers have paid for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT 
    film.title, 
    SUM(payment.amount) AS profit
FROM payment
JOIN rental 
ON payment.rental_id = rental.rental_id
JOIN inventory 
ON rental.inventory_id = inventory.inventory_id
JOIN film 
ON inventory.film_id = film.film_id
GROUP BY film.title
ORDER BY profit DESC;
