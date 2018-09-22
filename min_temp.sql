SELECT 
	events,
	MinTemperatureF
FROM 
	weather
WHERE
	ZIP = 94301 AND 
	--PrecipitationIn > 0
	(events = 'Rain' OR events = 'Fog-Rain' OR events = 'Rain-Thunderstorm')