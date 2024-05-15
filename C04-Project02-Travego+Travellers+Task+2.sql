use travego;


SELECT * FROM Passenger
WHERE gender = 'F' AND distance >= 600;

SELECT * FROM Passenger
WHERE distance > 500 AND bus_type = 'Sleeper';

SELECT name FROM Passenger
WHERE name LIKE 'S%';

SELECT p.name, p.boarding_city, p.destination_city, p.bus_type, pr.price
FROM Passenger p
JOIN Price pr ON p.bus_type = pr.bus_type AND p.distance = pr.distance;


SELECT p.name, pr.price
FROM Passenger p
JOIN Price pr ON p.bus_type = pr.bus_type AND p.distance = pr.distance
WHERE p.distance = 1000 AND p.bus_type = 'Sitting';


SELECT pr.bus_type, pr.price
FROM Passenger p
JOIN Price pr ON p.bus_type = pr.bus_type AND p.distance = pr.distance
WHERE p.name = 'Pallavi' AND p.boarding_city = 'Bangalore' AND p.destination_city = 'Panaji';

UPDATE Passenger
SET category = 'Non-AC'
WHERE bus_type = 'Sleeper';

select * from passenger;

DELETE FROM Passenger
WHERE name = 'Piyush';

select * from passenger;

TRUNCATE TABLE Passenger;
-- The number of rows is now 0

DROP TABLE Passenger;


