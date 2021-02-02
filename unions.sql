SELECT first_name, last_name, street, city, zip, birth_date
FROM customer
WHERE MONTH(birth_date) = 12
UNION
SELECT first_name, last_name, street, city, zip, birth_date
FROM sales_person
WHERE MONTH(birth_date) = 12
ORDER BY birth_date;