--Return list of stations with a count of number of trips starting at that station but ordered by dock count

SELECT 
	trips.start_station,
	stations.dockcount,
	COUNT(*) start_count
FROM
	trips
JOIN
	stations
ON
	stations.name = trips.start_station
GROUP BY 1
ORDER BY 2 DESC

-- what does GROUP BY 1,2 do? 