-- Helps find missing values in each column.

SELECT 
    SUM(CASE WHEN column_name IS NULL THEN 1 ELSE 0 END) AS missing_values,
    COUNT(*) AS total_rows
FROM sales_data;
