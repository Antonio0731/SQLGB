-- SELECT  user_id, count(*) AS number_of_likes FROM likes

SELECT 
t1.gender,
count(t2.post_id) AS number_of_likes
FROM profiles AS t1
LEFT JOIN likes AS t2
ON t1.user_id = t2.user_id
GROUP BY t1.gender;