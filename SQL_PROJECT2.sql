SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';

SELECT COUNT(*) AS TotalFilms FROM film;
SELECT COUNT(*) AS TotalCustomers FROM customer;
SELECT COUNT(*) AS TotalCategories FROM category;

SELECT * FROM film

SELECT MIN(rental_rate) AS CheapestRent,
       MAX(rental_rate) AS DearestRate
FROM film;

SELECT AVG(length) AS AvgLenght,
       SUM(replacement_cost) AS Replacement
FROM film;       

SELECT SUM(amount) AS TotalRevenue
FROM payment;

SELECT * FROM payment

SELECT MIN(payment_date) AS EarliestPayment,
       MAX(payment_date) AS LastPayment
FROM payment;

SELECT film_id AS ID,
       title AS Film_Title,
       rental_rate AS Film_Price
FROM film
ORDER BY rental_rate DESC
LIMIT 5;

SELECT EXTRACT(YEAR FROM payment_date) AS PaymentYear,
       COUNT(*)  AS NumberofPayment,
       SUM(amount) AS RevenueThatYear
FROM payment
GROUP BY PaymentYear
ORDER BY PaymentYear;