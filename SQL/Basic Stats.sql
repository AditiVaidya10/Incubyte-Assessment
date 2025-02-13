-- Total number of orders and revenue.

SELECT COUNT(*) AS total_orders, SUM(sales_amount) AS total_revenue FROM sales_data;

-- Min, max, avg, and median sales.

SELECT 
    MIN(sales_amount) AS min_sales,
    MAX(sales_amount) AS max_sales,
    AVG(sales_amount) AS avg_sales,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY sales_amount) AS median_sales
FROM sales_data;
