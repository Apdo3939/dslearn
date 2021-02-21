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

INSERT INTO tb_section (title, description, position, img_uri, resource_id, preriquisite_id) VALUES ('Chapter one', 'Introduction', 1, 'D:\BootCamp03\img\html.png', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, preriquisite_id) VALUES ('Chapter two', 'Begin code', 2, 'D:\BootCamp03\img\html.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, preriquisite_id) VALUES ('Chapter three', 'Implements code', 3, 'D:\BootCamp03\img\html.png', 1, 2);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, preriquisite_id) VALUES ('Chapter four', 'Deployment project', 4, 'D:\BootCamp03\img\html.png', 1, 3);

INSERT INTO tb_enrollment (enroll_moment, refund_moment, avaliable, only_update, user_id, offer_id) VALUES (TIMESTAMP WITH TIME ZONE '2019-01-02T03:00:00Z', null, true, false, 1, 1);

INSERT INTO tb_lesson(title, position, section_id) VALUES ('Lesson 01 for chapter 1', 1, 1);
INSERT INTO tb_content(id, text_content, video_uri) VALUES ( 1, 'Lesson 01 for chapter 1', 'https://www.youtube.com/watch?v=laC0fiI-IOM');

INSERT INTO tb_lesson(title, position, section_id) VALUES ('Lesson 02 for chapter 1', 2, 1);
INSERT INTO tb_content(id, text_content, video_uri) VALUES ( 2, 'Lesson 01 for chapter 1', 'https://www.youtube.com/watch?v=laC0fiI-IOM');

INSERT INTO tb_lesson(title, position, section_id) VALUES ('Lesson 01 for chapter 1', 3, 1);
INSERT INTO tb_content(id, text_content, video_uri) VALUES ( 3, 'Lesson 03 for chapter 1', 'https://www.youtube.com/watch?v=laC0fiI-IOM');

INSERT INTO tb_lesson(title, position, section_id) VALUES ('Lesson 01 for chapter 1', 4, 1);
INSERT INTO tb_task(id, description, question_count, approval_count, weight, due_date) VALUES ( 1, 'delivery 01 for chapter 1', 1, 1, 1.0, TIMESTAMP WITH TIME ZONE '2020-07-02T18:00:00Z');

INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (1,1,1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (2,1,1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Restart', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Ok thank', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);


