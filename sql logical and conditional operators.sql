#conditional operators
SELECT * 
FROM sales_item
WHERE discount > .15;

#logical operators - allow to combine conditions
SELECT time_order_taken 
FROM sales_order
WHERE time_order_taken > "2018-12-01" 
AND time_order_taken < "2018-12-31";

SELECT time_order_taken, cust_id
FROM sales_order
WHERE time_order_taken BETWEEN "2018-12-01" 
AND "2018-12-31";

#LIMIT
SELECT *
FROM sales_item
WHERE discount > .15
ORDER BY discount DESC
LIMIT 5, 10;

SELECT concat(first_name, ' ', last_name) AS name, phone_number, state
FROM customer
WHERE state = "TX";

SELECT product_id, SUM(price) AS value
FROM item
WHERE product_id = 1;

SELECT DISTINCT state
FROM customer
ORDER BY state;

SELECT DISTINCT state
FROM customer
WHERE state != "CA"
ORDER BY state;

SELECT DISTINCT state
FROM customer
WHERE state IN ("CA", "NJ")
ORDER BY state;