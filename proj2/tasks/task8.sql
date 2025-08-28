-- Write a SQL query to find the top 5 customers based on the highest total sales 

SELECT customer_id,
       sum(total_sale) AS total_sales
from retail_sales
group by customer_id
ORDER BY total_sales DESC
LIMIT 5;