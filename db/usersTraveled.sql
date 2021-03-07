SELECT CONCAT(d.City,', ',d.Country) AS destination, SUM(AmountOfPassengers) AS num
FROM flights AS f
INNER JOIN location AS d ON f.DestinationId = d.Id
WHERE f.ArrivalTime >= NOW() - INTERVAL '7 days'
GROUP BY destination;