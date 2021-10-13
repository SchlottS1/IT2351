-- Created by Spencer Schlott for IT2351, Fall 2021
use SpencerSchlott_guitar_shop;
-- drop the procedure if it already exists
drop procedure if exists productCount;

DELIMITER //
-- create the procedure
CREATE PROCEDURE productCount()
BEGIN
-- declare our variable countOrders as an INT 
	DECLARE countOrders INT;
    -- Use a select count to count the number of products that there are
    SELECT count(*) into countOrders from products;
    -- if else statement, so if there's more than or equal to 18, it displays the 
    -- first message, otherwise it displays the second message
    IF countOrders >= 18 THEN
		SELECT 'The number of products is greater than or equal to 18';
	else
		SELECT 'The number of products is less than 18';
	END IF;
    
END//

DELIMITER ;
-- call the procedure
CALL productCount();

