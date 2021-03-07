SELECT *
FROM (SELECT 
	CONCAT(o.City,', ',o.Country,' -- ',d.City,', ',d.Country) AS route, 
	COUNT(*) AS times
FROM flights AS f
INNER JOIN location AS d ON f.DestinationId = d.id
INNER JOIN location AS o ON f.OriginId = o.id
WHERE f.DepartureTime >= NOW() - INTERVAL '8 hours'
GROUP BY route) AS routes
ORDER BY times DESC
LIMIT 1;
