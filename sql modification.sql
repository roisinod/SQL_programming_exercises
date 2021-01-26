#ALTER TABLE sales_item ADD day_of_the_week VARCHAR(8);
#ALTER TABLE sales_item MODIFY day_of_the_week VARCHAR(9) NOT NULL;
#ALTER TABLE sales_item DROP COLUMN day_of_the_week;
#CREATE TABLE transaction_type(
#NAME VARCHAR(30) NOT NULL, 
#payment_type VARCHAR(30) NOT NULL,
#id INT UNSIGNED NOT NULL
#AUTO_INCREMENT PRIMARY KEY);
#RENAME TABLE transaction_type TO transaction;
#CREATE INDEX transaction_id ON transaction(name); 
#CREATE INDEX transaction_id_2 ON transaction(name, payment_type);
#TRUNCATE TABLE transaction;
DROP TABLE transaction;