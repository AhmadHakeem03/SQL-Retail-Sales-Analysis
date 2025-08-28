-- Write a SQL query to calculate the average sale for each month. Find out best selling month in each year

WITH monthly_avg AS (
    SELECT 
        EXTRACT(YEAR FROM sale_date) AS year,
        EXTRACT(MONTH FROM sale_date) AS month,
        AVG(total_sale) AS avg_sale
    FROM retail_sales
    GROUP BY EXTRACT(YEAR FROM sale_date), EXTRACT(MONTH FROM sale_date)
)
SELECT year, month, avg_sale
FROM (
    SELECT 
        year,
        month,
        avg_sale,
        RANK() OVER (PARTITION BY year ORDER BY avg_sale DESC) AS rnk
    FROM monthly_avg
) ranked
WHERE rnk = 1
ORDER BY year;
