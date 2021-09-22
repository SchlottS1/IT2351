/* Here i used a select function to get category name, select(count) to get the number of products for each category
name and then a select(sum) with quantity to get the total amount of orders. I used an inner join function to join
both products and order_items with the categories table. I then grouped by category name, and used order by with
the number of products in descending order.
Created by Spencer Schlott for IT2351, Fall 2021 */
SELECT category_name as 'Category Name', count(category_name) as 'Number of Products', sum(quantity) as 'Orders'
from categories
inner join products on categories.category_id = products.category_id
inner join order_items on products.product_id = order_items.product_id
group by category_name 
order by count(category_name) desc;