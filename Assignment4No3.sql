/*I used a select statement to get the list price, then i used a format function to have the list price with one decimal,
next I used convert to convert list price to a signed integer; lastly I used cast to cast list price as a signed integer.
Created By Spencer Schlott for IT2351, Fall 2021 */
select list_price, FORMAT(list_price, 1), CONVERT(list_price, SIGNED), CAST(list_price AS SIGNED) from products;