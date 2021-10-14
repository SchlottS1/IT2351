-- Created by Spencer Schlott for IT2351, Fall 2021

use SpencerSchlott_guitar_shop;
-- drop the function if it already exists
DROP FUNCTION IF EXISTS new_price;
-- change the delimiter
DELIMITER //
-- create the function for the assignment
CREATE FUNCTION new_price
(
-- pass an input parameter for the item id in our function and specify the data type
	item_id_param int
)
-- specify what type of value the function will return. It will return the new price
RETURNS int
-- reads the data, doesn't update it
DETERMINISTIC READS SQL DATA
BEGIN
-- specify a variable to hold the info that is the new price
	DECLARE new_price_var int;
    -- select item price minus discount amount as this is the amount that will be the
    -- new price
    SELECT (item_price - discount_amount)
    -- put that new price into our variable
    INTO new_price_var
    from order_items
    -- specify that it should happen only when the item id is equal to the item id
    -- parameter that we use as input
    WHERE item_id = item_id_param;
    -- return that new price variable
    RETURN(new_price_var);
    END//
    
    DELIMITER ;
    -- select distinct with our new price function. In this case I choose item_id 2
    -- and included an as 'New Price' so the column would be neater.
    SELECT DISTINCT new_price(2) as 'New Price'
    from order_items;
    


