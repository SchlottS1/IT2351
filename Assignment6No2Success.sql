-- Created by Spencer Schlott for IT2351, Fall 2021
use SpencerSchlott_guitar_shop;
-- drop procedure if it already exists
DROP PROCEDURE IF EXISTS insertCategory;

DELIMITER //
-- create the procedure
CREATE PROCEDURE insertCategory()
BEGIN
-- declare a variable to catch exceptions
	DECLARE duplicate_entry int DEFAULT FALSE;
    -- trips variable to catch exceptions to true if there's a 1062 error
    DECLARE continue handler for 1062
		SET duplicate_entry = true;
-- insert waves into categories
	INSERT INTO categories VALUES (5, 'Winds');
    -- if there is a duplicate entry then our variable is true and first statement
    -- is used, otherwise the second statement is shown.
    IF duplicate_entry = TRUE THEN
		SELECT 'Row was not inserted - duplicate entry';
	ELSE
		SELECT '1 row was inserted';
	END IF;
END//

DELIMITER ;

CALL insertCategory();