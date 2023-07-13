SELECT res.id, property, PP.title, res.start_date, pp.cost_per_night, AVG(rating)
FROM reservations res 
LEFT JOIN properties pp
res.property_id  = pp.id
JOIN property_reviews pr 
pr.property_id = res.property_id