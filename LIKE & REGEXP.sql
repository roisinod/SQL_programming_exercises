SELECT first_name, last_name
FROM customer
WHERE first_name LIKE "M%";
 #% gets characters that come after 'm'
 
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'D_____';
#names that begin with D with a certain number of characters

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'D%' OR last_name LIKE '%n';
 