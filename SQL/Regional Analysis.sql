-- Which regions generate the most revenue?

SELECT region, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;

-- Most profitable states.

SELECT state, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY state
ORDER BY total_sales DESC;
