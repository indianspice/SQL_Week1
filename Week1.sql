/* Homework #1
/* Sharon Morris
/* Question #1
/* Return destination and distance sorted in descending order by distance
/* HNL is the furtest distance away

USE flights;
SELECT dest, distance
FROM flights
ORDER BY distance DESC;


/* Question #2
/*Different numbers of engines (1, 2, 3, 4)
USE flights;
SELECT engines
FROM planes
GROUP BY engines;

/*For each engine number which aircraft has the most seats
/* The A330-223 has the most seats
USE flights;
SELECT engines, model, seats
FROM planes
GROUP BY engines;


/* Question #3
/* Total number of flights (336776)
USE flights;
SELECT COUNT(flight)
FROM flights;


/*Question #4
/* Total number of flghts by carrier
USE flights;
SELECT carrier, flight
FROM flights
GROUP BY carrier;


/*Question #5
/* Airlines ordered by number of flighst in descending order
USE flights;
SELECT carrier, flight 
FROM flights
ORDER BY flight DESC;


/*Question 6
/*Show only the top 5 airlines, by number of flights, ordered by number of flingts in descending order
USE flights;
SELECT carrier, COUNT(*)
FROM flights
GROUP BY carrier
ORDER BY COUNT(*) DESC
LIMIT 5;


/*Question 7
/*Show only top 5 airlines, by number of flights of distance 1,000 miles or greater
USE flights;
SELECT carrier, COUNT(*)
FROM flights
WHERE distance >= 1000
GROUP BY carrier
ORDER BY COUNT(*) DESC
LIMIT 5;



/*Question 8
/* Create a question that uses data from the flights database
/*Identify the top manufacturer whose planes are flown the most frequently to Atlanta
SELECT p.manufacturer, COUNT(*)
FROM planes p
JOIN flights f
ON p.tailnum = f.tailnum
WHERE f.dest = 'ATL'
GROUP BY p.manufacturer
ORDER BY COUNT(*) DESC
LIMIT 1;
