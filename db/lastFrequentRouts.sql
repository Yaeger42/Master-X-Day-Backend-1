SELECT *
FROM (SELECT 
	CONCAT(o.city,', ',o.country,' -- ',d.city,', ',d.country) AS route, 
	COUNT(*) AS times
FROM flights AS f
INNER JOIN location AS d ON f.destinationId = d.id
INNER JOIN location AS o ON f.originId = o.id
WHERE f.departure >= NOW() - INTERVAL '8 hours'
GROUP BY route) AS routes
ORDER BY times DESC
LIMIT 1;
