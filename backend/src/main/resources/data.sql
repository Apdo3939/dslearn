INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Lila', 'lila@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 3);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 3);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Html', 'D:\BootCamp03\img\html.png', 'D:\BootCamp03\img\htmlgray.png');
INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Css', 'D:\BootCamp03\img\css.png', 'D:\BootCamp03\img\cssgray.png');
INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Java', 'D:\BootCamp03\img\java.png', 'D:\BootCamp03\img\javagray.png');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('Basic', TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-01-02T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('Premium', TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-01-02T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('Full', TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-01-02T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('Basic', TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-01-02T03:00:00Z', 2);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('Premium', TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-01-02T03:00:00Z', 2);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('Full', TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-01-02T03:00:00Z', 2);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('Basic', TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-01-02T03:00:00Z', 3);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('Premium', TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-01-02T03:00:00Z', 3);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('Full', TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-01-02T03:00:00Z', 3);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Material aceito', TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', false, 'exemplo de rota', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Material aceito', TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', false, 'exemplo de rota', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Material aceito', TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', false, 'exemplo de rota', 3);

INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('HTML route', 'lesson 1', 1, 'D:\BootCamp03\img\html.png', 1, 'https://github.com', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Forum', 'Give your comments', 1, 'D:\BootCamp03\img\html.png', 2, 'https://github.com', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Lives', 'Choose your profile', 1, 'D:\BootCamp03\img\html.png', 3, 'https://github.com', 1);

