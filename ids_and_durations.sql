--SELECT 
	--trip_id, 
	--start_date
--FROM 
	--trips
--WHERE 
	--bike_id = 27 AND 
	--zip_code = 94107
--ORDER BY duration DESC 
--LIMIT 3


SELECT
	trip_id,
	duration
FROM
	trips
WHERE
	duration > 500
ORDER BY duration