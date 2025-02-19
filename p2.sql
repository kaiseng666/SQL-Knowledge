-- Problem 2
SELECT 
    c.customer_name,
    o.order_date,
    o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'New York';

-- Problem 2 Bonus
WITH customer_averages AS (
    SELECT 
        c.customer_id,
        c.customer_name,
        AVG(o.total_amount) as avg_amount
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    WHERE c.city = 'New York'
    GROUP BY c.customer_id, c.customer_name
)
SELECT 
    c.customer_name,
    o.order_date,
    o.total_amount,
    ca.avg_amount as customer_average_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN customer_averages ca ON c.customer_id = ca.customer_id
WHERE c.city = 'New York';
