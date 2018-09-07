-- Find the most expensive listing

SELECT *
FROM listings
ORDER BY price DESC
LIMIT 20

-- The most expensive listing is id13259140 listed at 9120 euro for 2 nights.
-- Hosted by Julien, the listing is a private double room overlooking Montjuic
-- in the El Poble Sec neighborhood of the Sants-Montjuic neighborhood group.
-- It shows a 0 for the availability_365 column which could indicate that it
-- is not actually available. 
--
-- Therefore, most expensive is the entire home/apt listed at 8000 euro for one night.
-- Located in La Marina del Prat Vermell in the Sants-Montjuic neighboorhood group,
-- this luxury motor yacht in Port Vell is available almost everyday of the year.