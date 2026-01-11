SELECT EXTRACT(YEAR FROM payment_date) AS pay_month FROM payment
SELECT EXTRACT(QUARTER FROM payment_date) AS pay_month FROM payment

SELECT AGE(payment_date) FROM payment

SELECT TO_CHAR(payment_date, 'mm-dd-yyyy') FROM payment
SELECT TO_CHAR(payment_date, 'MONTH    YYYY') FROM payment
SELECT TO_CHAR(payment_date, 'mm/dd/yyyy') FROM payment


