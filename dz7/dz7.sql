SELECT 
f.id,
c1.name AS from_city,
c2.name AS to_city
FROM flights AS f 
RIGHT JOIN cities AS c1 ON f.FROM = c1.label AND 
RIGHT JOIN cities AS c2 ON f.TO = c2.label
