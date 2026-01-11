-- During which months did payments occur?
-- Format your answer to return back the full month name
SELECT DISTINCT (TO_CHAR(payment_date, 'MONTH')) FROM payment

-- How many payments occurred on a Monday?
SELECT COUNT(*) FROM payment
WHERE TO_CHAR(payment_date, 'FMday') = 'monday'