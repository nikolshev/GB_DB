SELECT * FROM flights;
SELECT * FROM cities;

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `from` VARCHAR(130),
  `to` VARCHAR(130)
) COMMENT 'Таблица рейсов';

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(130),
  name VARCHAR(130)
) COMMENT 'Таблица городов';

INSERT INTO flights (`from`, `to`) VALUES
  ('moscow', 'omsk'),
  ('novgorod', 'kazan'),
  ('irkutsk', 'moscow'),
  ('omsk', 'irkutsk'),
  ('moscow', 'kazan');
  
 INSERT INTO cities (label, name) VALUES
  ('moscow', 'Москва'),
  ('irkutsk', 'Иркутск'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'),
  ('omsk', 'Омск');
 
 
  
SELECT
f.id,
c.name AS `from`,
f.`to` AS `to`
FROM
 flights f 
JOIN
 cities c 
ON
f.`from` = c.label
ORDER BY f.id;