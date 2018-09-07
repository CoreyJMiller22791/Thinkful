-- What time of year is the cheapest time to go to my city?
SELECT 
	listings.id,
	listings.price,
	listings.reviews_per_month,
	DATE(reviews.date) date_col,
	COUNT(*) counts
FROM
	listings
JOIN 
	reviews
ON
	reviews.listing_id = listings.id
GROUP BY date_col
ORDER BY counts DESC
