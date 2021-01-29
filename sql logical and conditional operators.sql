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
#join tables
SELECT item_id, price
FROM item INNER JOIN sales_item
ON item.id = sales_item.item_id
ORDER BY item_id;

SELECT item_id, price
FROM item INNER JOIN sales_item
ON item.id = sales_item.item_id
AND price > 120.00
ORDER BY item_id;
#join 3 tables
SELECT sales_order.id, sales_item.quantity, item.price,
(sales_item.quantity * item.price) AS total
FROM sales_order 
JOIN sales_item
ON sales_item.sales_order_id = sales_order.id
JOIN item
ON item.id = sales_item.item_id
ORDER BY sales_order.id;