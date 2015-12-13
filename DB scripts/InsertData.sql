USE [Cinema]
GO

INSERT INTO [cinema] ([id], [name], [location], [work_time], [phone])
	VALUES (0, '�������', '�������� ������������� 73, �����', '10:00 - 22:00', '8 017 292-94-26');
INSERT INTO [cinema] ([id], [name], [location], [work_time], [phone])
	VALUES (1, '���', '��. ������� 4�, �����', '10:00 - 22:00', '8 017 284-37-71');
INSERT INTO [cinema] ([id], [name], [location], [work_time], [phone])
	VALUES (2, '��������', '��. ����������� ������� 28, �����', '10:00 - 23:00', '8 017 209-40-34');
INSERT INTO [cinema] ([id], [name], [location], [work_time], [phone])
	VALUES (3, '��� ����', '����� ��������� 18, �����', '10:00 - 22:00', '8 017 280-35-26')
INSERT INTO [cinema] ([id], [name], [location], [work_time], [phone])
	VALUES (4, '�����������', '�������� ������������� 13, �����', '11:30 - 21:30', '8 017 200-34-16');

INSERT INTO [film] ([id], [name], [duration], [age_limit], [release_date], [average_mark], [description])
	VALUES (0, '� ������ ����', '121 ������', 12, '2015-12-01', 0, '� 1819 ���� ������������ ������� ������� � �������� �� ���� �������� ������� �� ����� ���������� �� ����� � ����� ����������� �� ���������� ��������. ������ 1820-�� �������� �� ���������� �������� ��� ����� ���� �������� ������ ����������� �������� �� �����, � ���������� ���� ������� �������� ��������� � ������. � ������� ���� � ������ ������� ��� �������� �� ��������� ������� �������');
INSERT INTO [film] ([id], [name], [duration], [age_limit], [release_date], [average_mark], [description])
	VALUES (1, '������ ������������', '109 �����', 16, '2015-12-02', 0, '����� ������ �� �������������� ������� ������� �������������, �� ���� ��� � � ����� ������ ��� ��������� �����.');
INSERT INTO [film] ([id], [name], [duration], [age_limit], [release_date], [average_mark], [description])
	VALUES (2, '��������� ����', '150 �����', 13, '2015-12-03', 0, '�������� ������ ���������� �� ���� ����� �������� ������������ ������� � ������������ � ����������� �������� ������� ��������, ������� ����������� � ��������� �������� �����, ����� ��� ���������� ��� �� ����������� ����������� ������� � ������������ �� ������������ ������������ � ���� ������������� ������ ��������-���������� U2.');
INSERT INTO [film] ([id], [name], [duration], [age_limit], [release_date], [average_mark], [description])
	VALUES (3, '�������� �����: ����������� ����', '136 �����', 13, '2015-12-04', 0, '����� �������� ��� ����� ������ ����� ������� � ���������� ��������� ��-�������� � ���������. ��������������� ����������� ����� ������� �� ����� � �� ������������ ��������� ������� ������� � ��� ������ ����� ����� ����� ��� �� ������ �������, ������� ��������� ��� ������. � ��� ������� ����� ������ ������ ���� ������� ��� � ������� ���������� ������ ������� ����� � ������� ����� ����� � �������� � ����� ����, �������� � ��������� ����. ������ ��� ������ ���� ��� ������ �������, ������ ������ ��� ������, ����� ���������� ��������, ��� ���� ������ ����� ���������� ������ � ����� ����. � � ��������� � ����� ������� ������ ����');
INSERT INTO [film] ([id], [name], [duration], [age_limit], [release_date], [average_mark], [description])
	VALUES (4, '������� ��������', '93 ������', 0, '2015-12-05', 0, '�� ������ ��������� �� �������, � ���������������� � �������� ������� � ����� � ����������� �� �����. � ��� ���� �������� �� �������� ����������� ������ ��������. ����� ��������� ������� ������ ��������� � ���������� ��������.')

INSERT INTO [country] ([id], [name])
	VALUES (0, '���');
INSERT INTO [country] ([id], [name])
	VALUES (1, '�����');
INSERT INTO [country] ([id], [name])
	VALUES (2, '��������');

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

INSERT INTO [genre] ([id], [name])
	VALUES (0, '����������');
INSERT INTO [genre] ([id], [name])
	VALUES (1, '�������');
INSERT INTO [genre] ([id], [name])
	VALUES (2, '����������');
INSERT INTO [genre] ([id], [name])
	VALUES (3, '�������');
INSERT INTO [genre] ([id], [name])
	VALUES (4, '�����������');
INSERT INTO [genre] ([id], [name])
	VALUES (5, '������');
INSERT INTO [genre] ([id], [name])
	VALUES (6, '�������');
INSERT INTO [genre] ([id], [name])
	VALUES (7, '�����');
INSERT INTO [genre] ([id], [name])
	VALUES (8, '�����');
INSERT INTO [genre] ([id], [name])
	VALUES (9, '���������');
INSERT INTO [genre] ([id], [name])
	VALUES (10, '�������');

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

INSERT INTO [mark] ([id], [name], [value])
	VALUES (0, '������� �����! (1)', 1);
INSERT INTO [mark] ([id], [name], [value])
	VALUES (1, '�������, �� �������� �� �� ���. (2)', 2);
INSERT INTO [mark] ([id], [name], [value])
	VALUES (2, '����� ��� ����� ���������� �����. (3)', 3);
INSERT INTO [mark] ([id], [name], [value])
	VALUES (3, '������� �����, �� ���� ��������. (4)', 4);
INSERT INTO [mark] ([id], [name], [value])
	VALUES (4, '�������� �����, ���������� ����! (5)', 5);

INSERT INTO [profile] ([id], [login], [is_admin])
	VALUES (0, 'nadya', 1);
INSERT INTO [profile] ([id], [login], [is_admin])
	VALUES (1, 'dima', 0);

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

INSERT INTO [actor] ([id], [name])
	VALUES (0, '���� ��������');
INSERT INTO [actor] ([id], [name])
	VALUES (1, '��� �������');
INSERT INTO [actor] ([id], [name])
	VALUES (2, '��� �����');
INSERT INTO [actor] ([id], [name])
	VALUES (3, '�������� �����');
INSERT INTO [actor] ([id], [name])
	VALUES (4, '������ ��������');
INSERT INTO [actor] ([id], [name])
	VALUES (5, '�������� �����-������');
INSERT INTO [actor] ([id], [name])
	VALUES (6, '������ �������');
INSERT INTO [actor] ([id], [name])
	VALUES (7, '��� �����');
INSERT INTO [actor] ([id], [name])
	VALUES (8, '���� ������');
INSERT INTO [actor] ([id], [name])
	VALUES (9, '����� �����');
INSERT INTO [actor] ([id], [name])
	VALUES (10, '������� ����');
INSERT INTO [actor] ([id], [name])
	VALUES (11, '������� ����������');

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

INSERT INTO [screenwriter] ([id], [name])
	VALUES (0, '������ ������');
INSERT INTO [screenwriter] ([id], [name])
	VALUES (1, '��� ������');
INSERT INTO [screenwriter] ([id], [name])
	VALUES (2, '���� ������');
INSERT INTO [screenwriter] ([id], [name])
	VALUES (3, '���� �����');
INSERT INTO [screenwriter] ([id], [name])
	VALUES (4, '���� ������');
INSERT INTO [screenwriter] ([id], [name])
	VALUES (5, '���� ����');
INSERT INTO [screenwriter] ([id], [name])
	VALUES (6, '����� ����');
INSERT INTO [screenwriter] ([id], [name])
	VALUES (7, '������� ������');
INSERT INTO [screenwriter] ([id], [name])
	VALUES (8, '��� ��������');
INSERT INTO [screenwriter] ([id], [name])
	VALUES (9, '��� �����');

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

INSERT INTO [producer] ([id], [name])
	VALUES (0, '������ �������');
INSERT INTO [producer] ([id], [name])
	VALUES (1, '���� �����');
INSERT INTO [producer] ([id], [name])
	VALUES (2, '����� ����');
INSERT INTO [producer] ([id], [name])
	VALUES (3, '������ ������� ������');
INSERT INTO [producer] ([id], [name])
	VALUES (4, '������ ��������');
INSERT INTO [producer] ([id], [name])
	VALUES (5, '���� ���� ������');
INSERT INTO [producer] ([id], [name])
	VALUES (6, '����� ���');

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

INSERT INTO [place] ([id], [range], [number])
	VALUES (0, 1, 1);
INSERT INTO [place] ([id], [range], [number])
	VALUES (1, 1, 2);
INSERT INTO [place] ([id], [range], [number])
	VALUES (2, 1, 3);
INSERT INTO [place] ([id], [range], [number])
	VALUES (3, 1, 4);
INSERT INTO [place] ([id], [range], [number])
	VALUES (4, 1, 5);
INSERT INTO [place] ([id], [range], [number])
	VALUES (5, 1, 6);
INSERT INTO [place] ([id], [range], [number])
	VALUES (6, 1, 7);
INSERT INTO [place] ([id], [range], [number])
	VALUES (7, 2, 1);
INSERT INTO [place] ([id], [range], [number])
	VALUES (8, 2, 2);
INSERT INTO [place] ([id], [range], [number])
	VALUES (9, 2, 3);
INSERT INTO [place] ([id], [range], [number])
	VALUES (10, 2, 4);
INSERT INTO [place] ([id], [range], [number])
	VALUES (11, 2, 5);
INSERT INTO [place] ([id], [range], [number])
	VALUES (12, 2, 6);
INSERT INTO [place] ([id], [range], [number])
	VALUES (13, 2, 7);
INSERT INTO [place] ([id], [range], [number])
	VALUES (14, 3, 1);
INSERT INTO [place] ([id], [range], [number])
	VALUES (15, 3, 2);
INSERT INTO [place] ([id], [range], [number])
	VALUES (16, 3, 3);
INSERT INTO [place] ([id], [range], [number])
	VALUES (17, 3, 4);
INSERT INTO [place] ([id], [range], [number])
	VALUES (18, 3, 5);
INSERT INTO [place] ([id], [range], [number])
	VALUES (19, 3, 6);
INSERT INTO [place] ([id], [range], [number])
	VALUES (20, 3, 7);

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