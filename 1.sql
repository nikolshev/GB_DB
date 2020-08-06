SELECT 
 u.name
FROM 
 users AS u 
JOIN
 orders AS o
ON 
 o.user_id = u.id
GROUP BY u.name;
