USE [CinemaDB]
GO

INSERT INTO [cinema] ([name], [location], [work_time], [phone])
	VALUES ('Октябрь', 'проспект Независимости 73, Минск', '10:00 - 22:00', '8 017 292-94-26');
INSERT INTO [cinema] ([name], [location], [work_time], [phone])
	VALUES ('Мир', 'ул. Козлова 4а, Минск', '10:00 - 22:00', '8 017 284-37-71');
INSERT INTO [cinema] ([name], [location], [work_time], [phone])
	VALUES ('Беларусь', 'ул. Романовская Слобода 28, Минск', '10:00 - 23:00', '8 017 209-40-34');
INSERT INTO [cinema] ([name], [location], [work_time], [phone])
	VALUES ('Дом кино', 'улица Толбухина 18, Минск', '10:00 - 22:00', '8 017 280-35-26')
INSERT INTO [cinema] ([name], [location], [work_time], [phone])
	VALUES ('Центральный', 'проспект Независимости 13, Минск', '11:30 - 21:30', '8 017 200-34-16');

INSERT INTO [film] ([name], [duration], [age_limit], [release_date], [average_mark], [description])
	VALUES ('В сердце моря', '121 минута', 12, '2015-12-01', 0, 'В 1819 году американский корабль «Эссекс» с командой из двух десятков человек на борту отправился из порта в штате Массачусетс на китобойный промысел. Осенью 1820-го успешная на протяжении полутора лет охота была прервана атакой гигантского кашалота на судно, в результате чего морякам пришлось пересесть в шлюпки. В течение трех с лишним месяцев они боролись за выживание посреди океана…');
INSERT INTO [film] ([name], [duration], [age_limit], [release_date], [average_mark], [description])
	VALUES ('Виктор Франкенштейн', '109 минут', 16, '2015-12-02', 0, 'Новый взгляд на фантастическую историю Виктора Франкенштейна, на этот раз — с точки зрения его помощника Игоря.');
INSERT INTO [film] ([name], [duration], [age_limit], [release_date], [average_mark], [description])
	VALUES ('Шпионский мост', '150 минут', 13, '2015-12-03', 0, 'Действие фильма происходит на фоне серии реальных исторических событий и рассказывает о бруклинском адвокате Джеймсе Доноване, который оказывается в эпицентре холодной войны, когда ЦРУ отправляет его на практически невозможное задание — договориться об освобождении захваченного в СССР американского пилота самолета-разведчика U2.');
INSERT INTO [film] ([name], [duration], [age_limit], [release_date], [average_mark], [description])
	VALUES ('Звездные войны: Пробуждение силы', '136 минут', 13, '2015-12-04', 0, 'Через тридцать лет после гибели Дарта Вейдера и Императора галактика по-прежнему в опасности. Государственное образование Новый Порядок во главе с их таинственным верховным лидером Сноуком и его правой рукой Кайло Реном идёт по стопам Империи, пытаясь захватить всю власть. В это нелёгкое время судьба сводит юную девушку Рей и бывшего штурмовика Нового Порядка Финна с героями времён войны с Империей — Ханом Соло, Чубаккой и Королевой Леей. Вместе они должны дать бой Новому Порядку, однако настаёт тот момент, когда становится очевидно, что лишь джедаи могут остановить Сноука и Кайло Рена. И в галактике в живых остаётся только один…');
INSERT INTO [film] ([name], [duration], [age_limit], [release_date], [average_mark], [description])
	VALUES ('Хороший динозавр', '93 минуты', 0, '2015-12-05', 0, 'По сюжету динозавры не вымерли, а эволюционировали в разумных существ и живут и здравствуют на Земле. А вот люди остались на довольно примитивной стадии развития. Фильм расскажет историю дружбы динозавра и маленького мальчика.')

INSERT INTO [country] ([name])
	VALUES ('США');
INSERT INTO [country] ([name])
	VALUES ('Индия');
INSERT INTO [country] ([name])
	VALUES ('Германия');

INSERT INTO [film_country] ([film_id], [country_id])
	VALUES (0, 0);
INSERT INTO [film_country] ([film_id], [country_id])
	VALUES (1, 0);
INSERT INTO [film_country] ([film_id], [country_id])
	VALUES (2, 0);
INSERT INTO [film_country] ([film_id], [country_id])
	VALUES (2, 1);
INSERT INTO [film_country] ([film_id], [country_id])
	VALUES (2, 2);
INSERT INTO [film_country] ([film_id], [country_id])
	VALUES (3, 0);
INSERT INTO [film_country] ([film_id], [country_id])
	VALUES (4, 0);

INSERT INTO [genre] ([name])
	VALUES ('Мультфильм');
INSERT INTO [genre] ([name])
	VALUES ('Комедия');
INSERT INTO [genre] ([name])
	VALUES ('Фантастика');
INSERT INTO [genre] ([name])
	VALUES ('Фэнтези');
INSERT INTO [genre] ([name])
	VALUES ('Приключения');
INSERT INTO [genre] ([name])
	VALUES ('Боевик');
INSERT INTO [genre] ([name])
	VALUES ('Триллер');
INSERT INTO [genre] ([name])
	VALUES ('Драма');
INSERT INTO [genre] ([name])
	VALUES ('Ужасы');
INSERT INTO [genre] ([name])
	VALUES ('Биография');
INSERT INTO [genre] ([name])
	VALUES ('История');

INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (0, 5);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (0, 6);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (0, 7);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (0, 4);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (0, 9);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (0, 10);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (1, 2);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (1, 7);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (1, 8);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (2, 6);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (2, 7);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (2, 9);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (2, 10);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (3, 2);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (3, 3);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (3, 4);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (3, 5);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (4, 0);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (4, 3);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (4, 1);
INSERT INTO [film_genre] ([film_id], [genre_id])
	VALUES (4, 4);

INSERT INTO [mark] ([name], [value])
	VALUES ('Ужасный фильм! (1)', 1);
INSERT INTO [mark] ([name], [value])
	VALUES ('Терпимо, но смотреть не на что. (2)', 2);
INSERT INTO [mark] ([name], [value])
	VALUES ('Более или менее нормальный фильм. (3)', 3);
INSERT INTO [mark] ([name], [value])
	VALUES ('Хороший фильм, но есть недочеты. (4)', 4);
INSERT INTO [mark] ([name], [value])
	VALUES ('Отличный фильм, рекомендую всем! (5)', 5);

INSERT INTO [profile] ([login], [is_admin])
	VALUES ('nadya', 1);
INSERT INTO [profile] ([login], [is_admin])
	VALUES ('dima', 0);

INSERT INTO [film_profile_mark] ([film_id], [mark_id], [profile_id])
	VALUES (0, 3, 0);
INSERT INTO [film_profile_mark] ([film_id], [mark_id], [profile_id])
	VALUES (0, 4, 1);
INSERT INTO [film_profile_mark] ([film_id], [mark_id], [profile_id])
	VALUES (1, 2, 0);
INSERT INTO [film_profile_mark] ([film_id], [mark_id], [profile_id])
	VALUES (1, 4, 1);
INSERT INTO [film_profile_mark] ([film_id], [mark_id], [profile_id])
	VALUES (2, 1, 0);
INSERT INTO [film_profile_mark] ([film_id], [mark_id], [profile_id])
	VALUES (2, 3, 1);
INSERT INTO [film_profile_mark] ([film_id], [mark_id], [profile_id])
	VALUES (3, 2, 0);
INSERT INTO [film_profile_mark] ([film_id], [mark_id], [profile_id])
	VALUES (3, 4, 1);
INSERT INTO [film_profile_mark] ([film_id], [mark_id], [profile_id])
	VALUES (4, 1, 0);
INSERT INTO [film_profile_mark] ([film_id], [mark_id], [profile_id])
	VALUES (4, 4, 1);

INSERT INTO [actor] ([name])
	VALUES ('Крис Хемсворт');
INSERT INTO [actor] ([name])
	VALUES ('Том Холланд');
INSERT INTO [actor] ([name])
	VALUES ('Бен Уишоу');
INSERT INTO [actor] ([name])
	VALUES ('Шарлотта Райли');
INSERT INTO [actor] ([name])
	VALUES ('Дэниэл Рэдклифф');
INSERT INTO [actor] ([name])
	VALUES ('Джессика Браун-Финдли');
INSERT INTO [actor] ([name])
	VALUES ('Джеймс МакЭвой');
INSERT INTO [actor] ([name])
	VALUES ('Том Хэнкс');
INSERT INTO [actor] ([name])
	VALUES ('Джон Бойега');
INSERT INTO [actor] ([name])
	VALUES ('Дэйзи Ридли');
INSERT INTO [actor] ([name])
	VALUES ('Джеффри Райт');
INSERT INTO [actor] ([name])
	VALUES ('Фрэнсис МакДорманд');

INSERT INTO [film_actor] ([film_id], [actor_id])
	VALUES (0, 0);
INSERT INTO [film_actor] ([film_id], [actor_id])
	VALUES (0, 1);
INSERT INTO [film_actor] ([film_id], [actor_id])
	VALUES (0, 2);
INSERT INTO [film_actor] ([film_id], [actor_id])
	VALUES (0, 3);
INSERT INTO [film_actor] ([film_id], [actor_id])
	VALUES (1, 4);
INSERT INTO [film_actor] ([film_id], [actor_id])
	VALUES (1, 5);
INSERT INTO [film_actor] ([film_id], [actor_id])
	VALUES (1, 6);
INSERT INTO [film_actor] ([film_id], [actor_id])
	VALUES (2, 7);
INSERT INTO [film_actor] ([film_id], [actor_id])
	VALUES (3, 8);
INSERT INTO [film_actor] ([film_id], [actor_id])
	VALUES (3, 9);
INSERT INTO [film_actor] ([film_id], [actor_id])
	VALUES (4, 10);
INSERT INTO [film_actor] ([film_id], [actor_id])
	VALUES (4, 11);

INSERT INTO [screenwriter] ([name])
	VALUES ('Чарльз Ливитт');
INSERT INTO [screenwriter] ([name])
	VALUES ('Рик Джаффа');
INSERT INTO [screenwriter] ([name])
	VALUES ('Макс Лэндис');
INSERT INTO [screenwriter] ([name])
	VALUES ('Мэри Шелли');
INSERT INTO [screenwriter] ([name])
	VALUES ('Мэтт Чарман');
INSERT INTO [screenwriter] ([name])
	VALUES ('Итан Коэн');
INSERT INTO [screenwriter] ([name])
	VALUES ('Джоэл Коэн');
INSERT INTO [screenwriter] ([name])
	VALUES ('Лоуренс Кэздан');
INSERT INTO [screenwriter] ([name])
	VALUES ('Боб Питерсон');
INSERT INTO [screenwriter] ([name])
	VALUES ('Мэг ЛеФов');

INSERT INTO [film_screemwriter] ([film_id], [screenwriter_id])
	VALUES (0, 0);
INSERT INTO [film_screemwriter] ([film_id], [screenwriter_id])
	VALUES (0, 1);
INSERT INTO [film_screemwriter] ([film_id], [screenwriter_id])
	VALUES (1, 2);
INSERT INTO [film_screemwriter] ([film_id], [screenwriter_id])
	VALUES (1, 3);
INSERT INTO [film_screemwriter] ([film_id], [screenwriter_id])
	VALUES (2, 4);
INSERT INTO [film_screemwriter] ([film_id], [screenwriter_id])
	VALUES (2, 5);
INSERT INTO [film_screemwriter] ([film_id], [screenwriter_id])
	VALUES (2, 6);
INSERT INTO [film_screemwriter] ([film_id], [screenwriter_id])
	VALUES (3, 7);
INSERT INTO [film_screemwriter] ([film_id], [screenwriter_id])
	VALUES (4, 8);
INSERT INTO [film_screemwriter] ([film_id], [screenwriter_id])
	VALUES (4, 9);

INSERT INTO [producer] ([name])
	VALUES ('Брайан Грейзер');
INSERT INTO [producer] ([name])
	VALUES ('Джон Дэвис');
INSERT INTO [producer] ([name])
	VALUES ('Маири Бетт');
INSERT INTO [producer] ([name])
	VALUES ('Кристи Макоско Кригер');
INSERT INTO [producer] ([name])
	VALUES ('Стивен Спилберг');
INSERT INTO [producer] ([name])
	VALUES ('Джей Джей Абрамс');
INSERT INTO [producer] ([name])
	VALUES ('Денис Рим');

INSERT INTO [film_producer] ([film_id], [producer_id])
	VALUES (0, 0);
INSERT INTO [film_producer] ([film_id], [producer_id])
	VALUES (1, 1);
INSERT INTO [film_producer] ([film_id], [producer_id])
	VALUES (1, 2);
INSERT INTO [film_producer] ([film_id], [producer_id])
	VALUES (2, 3);
INSERT INTO [film_producer] ([film_id], [producer_id])
	VALUES (2, 4);
INSERT INTO [film_producer] ([film_id], [producer_id])
	VALUES (3, 5);
INSERT INTO [film_producer] ([film_id], [producer_id])
	VALUES (4, 6);

INSERT INTO [place] ([range], [number])
	VALUES (1, 1);
INSERT INTO [place] ([range], [number])
	VALUES (1, 2);
INSERT INTO [place] ([range], [number])
	VALUES (1, 3);
INSERT INTO [place] ([range], [number])
	VALUES (1, 4);
INSERT INTO [place] ([range], [number])
	VALUES (1, 5);
INSERT INTO [place] ([range], [number])
	VALUES (1, 6);
INSERT INTO [place] ([range], [number])
	VALUES (1, 7);
INSERT INTO [place] ([range], [number])
	VALUES (2, 1);
INSERT INTO [place] ([range], [number])
	VALUES (2, 2);
INSERT INTO [place] ([range], [number])
	VALUES (2, 3);
INSERT INTO [place] ([range], [number])
	VALUES (2, 4);
INSERT INTO [place] ([range], [number])
	VALUES (2, 5);
INSERT INTO [place] ([range], [number])
	VALUES (2, 6);
INSERT INTO [place] ([range], [number])
	VALUES (2, 7);
INSERT INTO [place] ([range], [number])
	VALUES (3, 1);
INSERT INTO [place] ([range], [number])
	VALUES (3, 2);
INSERT INTO [place] ([range], [number])
	VALUES (3, 3);
INSERT INTO [place] ([range], [number])
	VALUES (3, 4);
INSERT INTO [place] ([range], [number])
	VALUES (3, 5);
INSERT INTO [place] ([range], [number])
	VALUES (3, 6);
INSERT INTO [place] ([range], [number])
	VALUES (3, 7);

INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 0);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 1);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 2);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 3);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 4);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 5);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 6);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 7);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 8);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 9);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 10);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 11);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 12);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 13);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 14);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 15);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 16);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 17);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 18);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 19);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (0, 20);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 0);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 1);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 2);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 3);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 4);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 5);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 6);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 7);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 8);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 9);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 10);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 11);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 12);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (1, 13);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (2, 0);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (2, 1);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (2, 2);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (2, 3);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (2, 4);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (2, 5);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (2, 6);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (3, 0);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (3, 1);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (3, 2);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (3, 3);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (3, 4);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (3, 5);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (3, 6);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (4, 0);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (4, 1);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (4, 2);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (4, 3);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (4, 4);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (4, 5);
INSERT INTO [cinema_place] ([cinema_id], [place_id])
	VALUES (4, 6);

INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (0, 0, '2015-11-01 12:00:00', 20000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (0, 1, '2015-11-01 14:30:00', 25000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (0, 2, '2015-11-01 16:30:00', 30000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (0, 3, '2015-11-01 19:00:00', 35000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (0, 4, '2015-11-01 21:00:00', 40000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (1, 0, '2015-11-01 14:00:00', 20000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (1, 1, '2015-11-01 16:30:00', 25000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (1, 2, '2015-11-01 18:30:00', 30000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (2, 2, '2015-11-01 12:30:00', 30000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (2, 3, '2015-11-01 16:00:00', 35000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (2, 4, '2015-11-01 20:00:00', 40000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (3, 0, '2015-11-01 12:00:00', 20000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (3, 1, '2015-11-01 14:30:00', 20000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (3, 2, '2015-11-01 16:30:00', 25000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (3, 3, '2015-11-01 19:00:00', 30000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (3, 4, '2015-11-01 21:00:00', 30000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (4, 0, '2015-11-01 12:00:00', 20000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (4, 1, '2015-11-01 14:30:00', 25000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (4, 2, '2015-11-01 16:30:00', 30000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (4, 3, '2015-11-01 19:00:00', 35000);
INSERT INTO [session] ([cinema_id], [film_id], [start_time], [ticket_cost])
	VALUES (4, 4, '2015-11-01 21:00:00', 40000);

INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 0, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 1, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 2, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 3, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 4, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 5, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 6, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 7, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 8, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 9, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 10, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 11, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 12, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 13, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 14, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 15, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 16, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 17, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 18, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 19, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 0, 20, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 1, 0, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 1, 1, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 1, 2, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 1, 3, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 1, 4, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 1, 5, 0);
INSERT INTO [ticket] ([cinema_id], [film_id], [place_id], [is_bought])
	VALUES (0, 1, 6, 0);