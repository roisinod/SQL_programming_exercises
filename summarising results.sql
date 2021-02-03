SELECT MONTH(birth_date) AS Month, COUNT(*) AS Amount
FROM customer
GROUP BY Month
ORDER BY Month;

SELECT MONTH(birth_date) AS Month, COUNT(*) AS Amount
FROM customer
GROUP BY Month
HAVING Amount > 1
ORDER BY Month;

SELECT cust_id, company, COUNT(*) AS Purchases
FROM sales_order
JOIN customer
ON customer.id = cust_id
GROUP BY cust_id;
