#complex patterns using regular expressions 
SELECT first_name, last_name
FROM customer
WHERE first_name REGEXP '^Ma';
#first name starts with Ma

SELECT first_name, last_name
FROM customer
WHERE last_name REGEXP 'ez$';
#ends with ez
SELECT first_name, last_name
FROM customer
WHERE last_name REGEXP 'ez|son';
#ends with ez or son
SELECT first_name, last_name
FROM customer
WHERE last_name REGEXP '[w-z]';
#last names that contain w, x, y or z