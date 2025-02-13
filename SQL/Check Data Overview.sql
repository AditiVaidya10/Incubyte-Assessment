SELECT * FROM sales_data LIMIT 10; -- This gives a preview of the dataset.

-- Helps identify column names and data types.
SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'sales_data';
