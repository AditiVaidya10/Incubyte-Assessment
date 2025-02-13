-- Which customer segments spend the most?

SELECT customer_segment, COUNT(DISTINCT customer_id) AS total_customers, 
       SUM(sales_amount) AS total_spent
FROM sales_data
GROUP BY customer_segment
ORDER BY total_spent DESC;
