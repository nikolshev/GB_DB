-- В одну операцию решить задачу не смог.
-- Пытался написать следующий код, но он ен заработал. Не знаю, как отредактировать.

 SELECT COUNT(target_id) 
  FROM likes 
  WHERE target_id 
  IN (SELECT user_id 
  FROM profiles 
  ORDER BY birthday DESC 
  LIMIT 10); 
 
-- поэтому разбил задачу на подазадчи:

-- 1. Создаем временную таблицу, в которую запишем список из 10 самых молодых пользователей нашей соц сети
DROP TABLE IF EXISTS temporarily;
CREATE TABLE temporarily (user_id INT UNSIGNED NOT NULL);

SELECT * FROM temporarily;

-- 2. Заполняем таблицу из 10 самых молодых юзеров
INSERT INTO temporarily SELECT user_id 
  FROM profiles
  ORDER BY birthday DESC
  LIMIT 10;


-- 3. Считаем, сколько лайков собрали эти 10 юзеров
SELECT COUNT(target_id) FROM likes WHERE target_id IN (SELECT user_id 
  FROM temporarily); 
  
-- 4. Удаляем временную таблицу
DROP TABLE IF EXISTS temporarily;