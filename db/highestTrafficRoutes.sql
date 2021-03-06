-- AeroPlatzi's routes and times with the highest traffic.

SELECT
    *
FROM flights
WHERE flightstatusid = 1
AND departuretime BETWEEN now()-interval '24 hours' AND arrivalTime is null
GROUP BY originid, destinationid