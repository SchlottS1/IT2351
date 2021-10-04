/*Here I used a select distinct just to show each product with an item price that is higher than the average item price only once and not repeatedly.
I then used a where statement to select only those products where the item prices is greater than the average item price. I used a subquery with the
select avg(item_price) to get the average item price.
Created by Spencer Schlott for IT2351, Fall 2021 */
SELECT DISTINCT products.product_name, item_price from order_items, products

where item_price > (select avg(item_price) from order_items);