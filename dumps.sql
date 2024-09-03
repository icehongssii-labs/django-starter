INSERT INTO message.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES
(2, 'pbkdf2_sha256$870000$F8JXHeNBChec1wVlJlOewE$iM4WPpib4nwBTq+zhTjsLJ1PCMEbswPbRLK62Iuv1Vk=', NULL, 0, 'douner', '', '', 'vivainno.douner@gmail.com', 0, 1, '2024-09-03 08:52:20.861171'),
(3, 'pbkdf2_sha256$870000$GCVM9m8rnW8QrHznAQi6TI$YsdPL1RVBgq+OxPxNIveZKU237kR6REZVTt8cmX4Nes=', '2024-09-03 14:46:59.572109', 0, 'crispylegs', '', '', 'crispylegs1921@gmail.com', 0, 1, '2024-09-03 08:52:37.447465'),
(4, 'pbkdf2_sha256$870000$hWMpZEOTjbiTzyhKYv6Wt4$uwd+q9GMw/VIMK80c2a+rqmUHOof/JE+XIm2GXZ4ElA=', NULL, 0, 'icehongssii', '', '', 'icehongsii@gmail.com', 0, 1, '2024-09-03 08:52:52.728041');

INSERT INTO message.account_emailaddress (email,verified,`primary`,user_id) VALUES
	 ('admin@myproject.com',0,1,1);
	--  ('crispylegs1921@gmail.com',1,0,3),
	--  ('vivainno.douner@gmail.com',1,0,2),
	--  ('icehongssii@gmail.com',1,0,4);
INSERT INTO message.a_messageboard_messageboard (id) VALUES
	 (1),
	 (2);
INSERT INTO message.a_messageboard_messageboard_subscribers (messageboard_id,user_id) VALUES
	 (1,2),
	 (1,3),
	 (1,4),
     (2,2),
     (2,3),
	 (2,4);
INSERT INTO message.a_users_profile (image,displayname,info,user_id) VALUES
     ('',NULL,NULL,2),
	 ('',NULL,NULL,3),
	 ('',NULL,NULL,4);

INSERT INTO a_messageboard_message (id, body, created, author_id, messageboard_id) VALUES(1, '11111', '2024-09-03 09:09:41.428384', 3, 1);
INSERT INTO a_messageboard_message (id, body, created, author_id, messageboard_id) VALUES(2, '222222', '2024-09-03 09:09:49.703391', 2, 1);
INSERT INTO a_messageboard_message (id, body, created, author_id, messageboard_id) VALUES(3, 'sisakskd', '2024-09-03 14:47:24.923773', 3, 2);
INSERT INTO a_messageboard_message (id, body, created, author_id, messageboard_id) VALUES(4, 'sdasdasdsadasdasdakjn 김치찌개최고당!!zzz', '2024-09-03 14:52:52.241143', 3, 2);
INSERT INTO a_messageboard_message (id, body, created, author_id, messageboard_id) VALUES(5, 'sdasdasdsadasdasdakjn 김치찌개최고당!!zzzdd', '2024-09-03 14:54:54.200150', 3, 2);
INSERT INTO a_messageboard_message (id, body, created, author_id, messageboard_id) VALUES(6, '이메일이안가요 샹', '2024-09-03 14:55:10.354490', 3, 2);
INSERT INTO a_messageboard_message (id, body, created, author_id, messageboard_id) VALUES(7, '이메일이안가요 샹', '2024-09-03 14:55:30.998330', 3, 2);
INSERT INTO a_messageboard_message (id, body, created, author_id, messageboard_id) VALUES(8, '이메일이안가요 샹', '2024-09-03 14:55:53.396740', 3, 2);
INSERT INTO a_messageboard_message (id, body, created, author_id, messageboard_id) VALUES(9, '무ㅜㄴ고옹우 ㅜㅜㅜㅜ이메일이안가요 샹', '2024-09-03 14:55:57.677524', 3, 2);