/* Here i used select function to get the category name, and product name. I used select sum(quantity) to get the total
amount of orders for each product and category. I inner joined products and order items. I used group by with rollup to
create multiple groups and then i used order by isnull(category_name), categoryname to order the list by category name
and ensure that null is at the end.
Created by Spencer Schlott for IT2351, Fall 2021 */
SELECT category_name as 'Category Name', product_name, sum(quantity) as 'Orders'
from categories
inner join products on categories.category_id = products.category_id
inner join order_items on products.product_id = order_items.product_id
group by category_name, product_name WITH ROLLUP
order by isnull(category_name), category_name;