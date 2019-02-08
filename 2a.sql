--Create a query that returns the name of 
--the most popular item in every state 
--and the state
WITH total AS(
	WITH temp as (SELECT product_id, state, COUNT(*) AS counts
		FROM transactions
		JOIN customers USING (customer_id)
		JOIN products USING (product_id)
		GROUP BY state,1
		ORDER BY counts)
	
	SELECT rs.product_id, rs.state, rs.counts
		FROM (
			SELECT temp.product_id,temp.state, temp.counts, Rank() 
          	over (Partition BY temp.state
                ORDER BY temp.counts DESC ) AS Rank
			FROM temp
			) rs WHERE Rank = 1
	GROUP BY state
	ORDER BY counts DESC)
SELECT state, product_name, counts
FROM total
JOIN products USING (product_id)

