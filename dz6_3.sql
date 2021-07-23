-- SELECT (SELECT user_id FROM posts) AS user_id,count(*) AS number_of_likes FROM likes WHERE user_id IN (SELECT * FROM  (SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) tmp_tab);
SELECT 
count(t2.post_id) AS number_of_likes
FROM posts AS t1
LEFT JOIN likes AS t2
ON t1.id = t2.post_id
WHERE t1.user_id IN 
(SELECT * FROM  
(SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) tmp_tab);