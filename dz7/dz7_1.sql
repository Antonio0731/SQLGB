USE shop;

SELECT DISTINCT 
name
FROM users AS u JOIN orders  AS o ON u.id = o.user_id
GROUP BY name
HAVING count(o.id) >= 1;
