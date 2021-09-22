/* Here I used select count, to count the total number of orders
which is found from the order_id column, Then I used sum to sum
the total of the orders. I also used the as function to change the
name of the columns to Number of Orders and Total Ship Value.
Created by Spencer Schlott for IT2351, Fall 2021 */
SELECT COUNT(order_id) as 'Number of Orders',
SUM(ship_amount) as 'Total Ship Value'
FROM orders;