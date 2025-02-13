-- Average revenue per order.

SELECT SUM(sales_amount) / COUNT(DISTINCT order_id) AS avg_order_value
FROM sales_data;

-- Identifies repeat customers.

SELECT customer_id, COUNT(order_id) AS order_count
FROM sales_data
GROUP BY customer_id
ORDER BY order_count DESC
LIMIT 10;
