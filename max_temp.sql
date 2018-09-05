SELECT
	ZIP,
	MAX(MaxTemperatureF) maximum_temp
FROM 
	weather,
	stations
--ask about chaining queries to pull city name
-- may not be possible because no zip in stations where city data is
