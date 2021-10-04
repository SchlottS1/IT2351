/* Here we have a select distinct to select category_name from categories. Then i use a where in
function with category id from categories and category id from proudcts to do the same as a join
on function. Then it is ordered by category name
Created by Spencer Schlott for IT2351, Fall 2021 */
SELECT DISTINCT category_name
FROM categories
WHERE category_id in 
(select category_id from products)
ORDER BY category_name;