/* Here I used count to count the total number of products and
then I used max to find the max list price of all the items. I
also used as functions to put the names as Number of Products and
Max Item Price respectively.
Created by Spencer Schlott, IT2351, Fall 2021 */
SELECT COUNT(product_id) as 'Number of Products',
MAX(list_price) as 'Max Item Price'
FROM products;