--Create a query that returns the five most popular items 
--for users with a ‘gmail’ email in the past 30 days, based on number of sales.
SELECT product_name, email, transact_amt, DATE(transact_at) AS date_col
FROM products
JOIN transactions USING (product_id)
JOIN customers USING (customer_id)
WHERE email LIKE '%gmail.com' AND date_col BETWEEN DATE('now','-30000 days') AND DATE('now')
-- The most recent date in the dataset is 2018-03-18
--WHERE email LIKE '%gmail.com' AND date_col BETWEEN DATE('2018-03-18','-60 days') AND DATE('2018-03-18')
GROUP BY 3
ORDER BY transact_amt  desc
LIMIT 5

