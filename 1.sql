ALTER TABLE media
  ADD CONSTRAINT media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
      ON DELETE CASCADE;


ALTER TABLE media
  ADD CONSTRAINT user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  ADD CONSTRAINT friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id) ON DELETE CASCADE,
  ADD CONSTRAINT status_id_fk 
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);


ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id),	
  ADD CONSTRAINT post_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id);	


ALTER TABLE communities_users
  ADD CONSTRAINT cu_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id),
  ADD CONSTRAINT cu_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);
	

-- Не знаю, как связть target_id таблицы likes с media(id), posts(id), users(id), messages(id). 
ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT target_type_id_fk 
    FOREIGN KEY (target_type_id) REFERENCES target_types(id),
