--Create a query that returns the name and purchase amount 
--of the five customers in each state who have spent the most money

WITH temp AS (
	SELECT name, state, SUM(transact_amt) as amt
	FROM transactions
	JOIN customers
	USING (customer_id)
	GROUP BY 1
	ORDER BY amt DESC)
SELECT rs.name, rs.state, rs.amt
		FROM (
			SELECT temp.name,temp.state, temp.amt, Rank() 
          	over (Partition BY temp.state
                ORDER BY temp.amt DESC ) AS Rank
			FROM temp
			) rs WHERE Rank <=5