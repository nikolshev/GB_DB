SELECT 
CASE
WHEN (SELECT COUNT(user_id) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'm')) =
(SELECT COUNT(user_id) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'f'))
THEN 'ПОРОВНУ'
WHEN (SELECT COUNT(user_id) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'm')) >
(SELECT COUNT(user_id) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'f'))
THEN 'МУЖЧИНЫ'
WHEN (SELECT COUNT(user_id) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'm')) <
(SELECT COUNT(user_id) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'f'))
THEN 'ЖЕНЩИНЫ'
END AS WHOM_IS_MORE;