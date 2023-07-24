SELECT res.id, pp.title, pp.cost_per_night,res.start_date, AVG(pr.rating) as Average_Rating
FROM reservations res 
LEFT JOIN properties pp
ON res.property_id  = pp.id
JOIN property_reviews pr 
ON pr.property_id = res.property_id
WHERE res.guest_id = 1
GROUP BY res.id, pp.title, res.start_date, pp.cost_per_night
ORDER BY res.start_date 
LIMIT 10;