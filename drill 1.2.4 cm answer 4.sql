--What is the length of the longest trip for each day it rains anywhere?
-- start by creating temp table to get each day it rains
WITH 
	rain
AS (
	SELECT 
		date,
		Events
	FROM
		weather
	WHERE
		Events = 'Rain' or Events = 'Rain-Thunderstorm' or Events = 'Fog-Rain'
	GROUP BY 1
	)
SELECT 
	MAX(duration),
	DATE(start_date) trip_date
FROM
	trips
JOIN
	rain
ON
	rain.date = trip_date
GROUP BY trip_date
