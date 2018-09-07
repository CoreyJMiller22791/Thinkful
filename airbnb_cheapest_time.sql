-- What time of year is the cheapest time to go to my city?
SELECT 
	listings.id,
	listings.price,
	DATE(reviews.date) date_col
FROM
	listings
JOIN 
	reviews
ON
	reviews.listing_id = listings.id
--GROUP BY price -- this will toss out all but most recent date for that price...
-- the 8000 euro listing is gone in this list because it did not have any reviews (no date in reviews table)
ORDER BY price

-- The prices seem to be cheapest during the late summer into early spring time (winter time) based on looking at the data sorted by price.
-- I would like to sort this data by season to pick out the average price by season and answer the question based on that