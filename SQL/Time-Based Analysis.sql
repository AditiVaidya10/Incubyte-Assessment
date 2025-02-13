-- Shows sales performance on monthly basis.

SELECT DATE_TRUNC('month', order_date) AS month, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;

-- Helps analyze daily trends.

SELECT DATE(order_date) AS order_day, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY order_day
ORDER BY order_day;
