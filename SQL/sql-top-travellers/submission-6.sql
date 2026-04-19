Select u.name, COALESCE(SUM(r.distance), 0) as travelled_distance

From users u
LEFT JOIN rides r ON u.id = r.user_id
Group By u.id, u.name
Order by travelled_distance desc, u.name asc
