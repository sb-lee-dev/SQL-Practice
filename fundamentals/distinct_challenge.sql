-- situation
-- - An australian visitor isn not familiar with MPAA movie ratings (e.g PG, PG-13, R, etc...)
-- - We want to know the types of ratings we have in our database.
-- - What ratings do we have available?

SELECT DISTINCT rating FROM film;