#views are select statements result that are stored in the database.
CREATE VIEW purchase_order_overview AS
SELECT sales_order.purchase_order_number, customer.company, 
sales_item.quantity, product.supplier, product.name, item.price, 
(sales_item.quantity * item.price) AS Total,
CONCAT(sales_person.first_name, ' ', sales_person.last_name) AS Salesperson
FROM sales_order
JOIN sales_item
ON sales_item.sales_order_id = sales_order.id
JOIN item
ON item.id = sales_item.item_id
JOIN customer
ON sales_order.cust_id = customer.id
JOIN product
ON product.id = item.product_id
JOIN sales_person
ON sales_person.id = sales_order.sales_person_id
ORDER BY purchase_order_number;
#viewing view
SELECT *
FROM purchase_order_overview;
#only able to update view if it does not include DISTINCT, UNION or aggregate Functions such as GROUP BY or HAVING