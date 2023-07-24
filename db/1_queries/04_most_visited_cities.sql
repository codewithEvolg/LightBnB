SELECT city, Count(*) as total_reservations 
FROM properties pp
INNER JOIN reservations 
ON pp.id = property_id
GROUP BY city
ORDER by total_reservations desc;
