-- Problem 3
SELECT 
    SUM(quantity) as total_quantity_sold,
    AVG(quantity) as avg_quantity_per_order
FROM sales;

-- Problem 3 Bonus
SELECT 
    SUM(s.quantity) as total_quantity_sold,
    AVG(s.quantity) as avg_quantity_per_order,
    SUM(s.quantity * i.price) as total_sales_amount,
    AVG(s.quantity * i.price) as avg_sales_amount_per_order
FROM sales s
JOIN inventories i ON s.product_id = i.product_id;
