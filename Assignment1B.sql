-- the purpose of this is to show only the columns of title, artist and unit price from the items table in the om database.
-- This was created by Spencer Schlott for IT2351 in Fall 2021

SELECT title, artist, unit_price
FROM om.items
WHERE unit_price > 16;