/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT
    staff.first_name,
    staff.last_name,
    SUM(payment.amount) AS sum
FROM staff
JOIN payment ON staff.staff_id = payment.staff_id
WHERE DATE(payment.payment_date) >= '2020-01-01' 
  AND DATE(payment.payment_date) <= '2020-01-31'
GROUP BY staff.staff_id, staff.first_name, staff.last_name
ORDER BY sum;
