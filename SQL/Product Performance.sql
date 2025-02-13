--  Identifies top products.

SELECT product_name, COUNT(*) AS total_orders, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- Which product categories generate the most revenue?

SELECT product_category, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY product_category
ORDER BY total_sales DESC;
