SELECT 
	end_station,
	AVG(duration) average_trip
FROM 
	trips
GROUP BY 1
ORDER BY average_trip DESC