-- Write a SQL query to calculate the total sales (total_sale) for each category

SELECT category,
        sum(total_sale) AS total_sale
from retail_sales
group by category

