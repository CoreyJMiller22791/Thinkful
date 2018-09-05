SELECT
	start_station,
	COUNT(*) number_of_trips
FROM
	trips
GROUP BY start_station
ORDER BY number_of_trips DESC