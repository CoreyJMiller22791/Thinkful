-- Which station is full most often?
--grab stations where docks are full from status table and join with station name in stations table
SELECT
	status.station_id,
	stations.name,
	COUNT(CASE WHEN docks_available = 0 THEN 1 END) full_count
FROM 
	status
JOIN 
	stations
ON
	stations.station_id = status.station_id
GROUP BY 1
ORDER BY full_count DESC 
LIMIT 10