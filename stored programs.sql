#create stored procedure that lists company names
USE sales_db2;
DROP PROCEDURE IF EXISTS get_customers;
 #switch end of statement to //
DELIMITER //
#create procedure
CREATE PROCEDURE get_customers()
BEGIN
    SELECT customer.company
    FROM customer;
END //
#change delimiter tpo ;
DELIMITER ;
#execute procedure
CALL get_customers();