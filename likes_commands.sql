-- Таблица типов лайков (like, dislike, angry)

CREATE TABLE likes_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название лайка",
  filename VARCHAR(255) NOT NULL COMMENT "Путь к файлу изображения лайка",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы лайков";


-- Таблица лайков

CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, который оставил лайк",
  media_id INT UNSIGNED NOT NULL COMMENT "Ссылка на медиафайл, под которым оставили лайк",
  like_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип лайка",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки"
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Лайки";
 
