-- Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

SELECT AVG(age) AS average_age
FROM retail_sales
WHERE category = 'Beauty';