-- Delete from sales first due to foreign key constraints
DELETE FROM sales
WHERE customer_id = 5;

-- Delete from orders
DELETE FROM orders
WHERE customer_id = 5;
