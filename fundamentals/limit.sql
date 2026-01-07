SELECT * FROM payment
WHERE amount != 0
ORDER BY payment_date DESC
LIMIT 10