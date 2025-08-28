-- Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

SELECT  gender, category, count(transactions_id)
from retail_sales
GROUP BY category, gender