-- Заполнение таблицы Артисты
insert into artist values (1, 'The Beatles', 1957);
insert into artist values (2, 'Muse', 1994);
insert into artist values (3, 'Nirvana');
insert into artist values (4, 'Linkin Park', 1999);
insert into artist values (5, 'Green Day', 1989);
insert into artist values (6, 'The Doors', 1965);
insert into artist values (7, 'Evanescence', 1995);
insert into artist values (8, 'Jimi Hendrix', 1942);

-- Заполнение таблицы Жанры
insert into genre values (1, 'Rock');
insert into genre values (2, 'Alternative');
insert into genre values (3, 'Grunge');
insert into genre values (4, 'Nu metal');
insert into genre values (5, 'Punk rock');
insert into genre values (6, 'Gothic rock');
insert into genre values (7, 'Blues');

-- Заполнение таблицы Альбомы
insert into album values (1, 'Revolver', 1966);
insert into album values (2, 'Black Holes and Revelations', 2006);
insert into album values (3, 'Nevermind', 1991);
insert into album values (4, 'Meteora', 2003);
insert into album values (5, 'American Idiot', 2004);
insert into album values (6, 'The Doors', 1967);
insert into album values (7, 'Fallen', 2018);
insert into album values (8, 'The Ultimate Experience', 1992);
insert into album values (9, 'Синий кит', 2019);
insert into album values (10, 'Fallen 2', 2018);

-- Заполнение таблицы Треки
insert into track values (1, 'Taxman', 1966, 2.36, 1);
insert into track values (2, 'Love You To', 1966, 3.01, 1);
insert into track values (3, 'Take a Bow', 2006, 4.35, 2);
insert into track values (4, 'Starlight', 2006, 3.59, 2);
insert into track values (5, 'Smells Like Teen Spirit', 1991, 5.01, 3);
insert into track values (6, 'Lithium', 1991, 4.38, 3);
insert into track values (7, 'Lying from You', 2003, 2.55, 4);
insert into track values (8, 'Numb', 2003, 3.28, 4);
insert into track values (9, 'American Idiot', 2004, 2.54, 5);
insert into track values (10, 'Soul Kitchen', 1967, 3.33, 6);
insert into track values (11, 'Bring Me to Life', 2002, 3.57, 7);
insert into track values (12, 'All Along the Watchtower', 1992, 4.01, 8);
insert into track values (13, 'Синий кит', 2019, 3.12, 9);
insert into track values (14, 'Tourniquet', 2018, 4.38, 10);
insert into track values (15, 'Imaginary', 2018, 4.17, 10);
insert into track values (16, 'My vol', 1966, 2.36, 1);
insert into track values (17, 'Some my voice', 1966, 3.36, 3);
insert into track values (18, 'Mine my', 1966, 2.36, 2);
insert into track values (19, 'Мой голос', 1976, 2.36, 4);
insert into track values (20, 'Мой', 1999, 2.36, 5);
insert into track values (21, 'Разум мой', 2021, 2.36, 5);

-- Заполнение таблицы Коллекции
insert into collections values (1, 'Fallen angel', 1995);
insert into collections values (2, 'Jim the best', 2018);
insert into collections values (3, 'Eva new', 2019);
insert into collections values (4, 'Muse nirvana', 1999);
insert into collections values (5, 'Green Muse', 2020);
insert into collections values (6, 'Beat nirvana', 2017);
insert into collections values (7, 'The Jimmy', 1992);
insert into collections values (8, 'Eva 2', 2015);

-- Заполнение таблицы АртистыАльбомы
insert into artistalbum values (1, 1);
insert into artistalbum values (2, 2);
insert into artistalbum values (3, 3);
insert into artistalbum values (4, 4);
insert into artistalbum values (5, 5);
insert into artistalbum values (6, 6);
insert into artistalbum values (7, 7);
insert into artistalbum values (8, 8);
insert into artistalbum values (9, 2);
insert into artistalbum values (10, 7);

-- Заполнение таблицы АртистыЖанры
insert into artistgenre values (1, 1);
insert into artistgenre values (2, 2);
insert into artistgenre values (3, 3);
insert into artistgenre values (4, 4);
insert into artistgenre values (5, 5);
insert into artistgenre values (6, 6);
insert into artistgenre values (7, 7);
insert into artistgenre values (7, 8);
insert into artistgenre values (1, 7);
insert into artistgenre values (6, 8);

-- Заполнение таблицы ТрекиКоллекции
insert into trackcollection values (1, 1, 1);
insert into trackcollection values (2, 2, 2);
insert into trackcollection values (3, 3, 3);
insert into trackcollection values (4, 4, 4);
insert into trackcollection values (5, 5, 6);
insert into trackcollection values (6, 6, 5);
insert into trackcollection values (7, 7, 7);
insert into trackcollection values (8, 8, 8);
insert into trackcollection values (9, 9, 6);
insert into trackcollection values (10, 10, 2);
insert into trackcollection values (11, 11, 3);
insert into trackcollection values (12, 12, 5);
insert into trackcollection values (13, 13, 7);
insert into trackcollection values (14, 14, 8);
insert into trackcollection values (15, 15, 1);