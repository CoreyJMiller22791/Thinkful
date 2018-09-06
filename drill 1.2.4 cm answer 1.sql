-- create temp table called rainy with events and date info for days that rained
WITH 
	rainy
AS (
	SELECT
		events,
		date
	FROM 	
		weather
	WHERE
		events = 'Rain' OR events = 'Fog-Rain' OR events = 'Rain-Thunderstorm' -- turns out that multiple events are entered for each day so this may not be necessary
	GROUP BY date
	)
-- select duration and start date (reformatted) from trips
SELECT
	duration,
	DATE(start_date) trip_date --reformats date
FROM 
	trips
-- join temp table with duration and date on dates
JOIN
	rainy
ON
	rainy.date = trip_date
ORDER BY duration DESC
LIMIT 3