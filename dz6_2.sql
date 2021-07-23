SELECT 
(SELECT first_name FROM users WHERE id = m.from_user_id) AS first_name,
(SELECT last_name FROM users WHERE id=m.from_user_id) AS last_name,
count(*) AS number_of_mes
FROM messages AS m 
WHERE to_user_id = 1 
GROUP BY from_user_id
ORDER BY number_of_mes DESC 
LIMIT 1;