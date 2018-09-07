-- What neighboorhoods seem to be the most popular?

SELECT
	id,
	neighbourhood, 
	neighbourhood_group,
	COUNT(*) counted
FROM
	listings
GROUP BY neighbourhood
ORDER BY counted DESC

-- The most popular neighborhoods are in Eixample and Ciutat Vella groups.