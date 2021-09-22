/* I used a select function to get category name, product name and quantity. I used if grouping to change the null values for category name and product name to grand total
and category total respectively. I used as functions to get the column names as Category, Product and Orders respectively. I used sum to get the total orders for quantity.
I used inner join to join both products and order_items. I grouped with rollup to have multiple groups. I then used order by to order by category name.
Created by Spencer Schlott for IT2351, Fall 2021.*/
SELECT if(grouping(category_name) = 1, 'Grand Total', category_name) as 'Category', if(grouping(product_name) = 1, 'Category Total', product_name) as 'Product', sum(quantity) as 'Orders'
from categories
inner join products on categories.category_id = products.category_id
inner join order_items on products.product_id = order_items.product_id
group by category_name, product_name WITH ROLLUP
order by isnull(category_name), category_name;