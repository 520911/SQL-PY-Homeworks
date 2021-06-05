-- Название и год выхода альбомов, вышедших в 2018 году;
select name, year from album where year = 2018;

-- Название и продолжительность самого длительного трека
select name, duration from track order by duration desc limit 1;

-- Название треков, продолжительность которых не менее 3,5 минуты
select name from track where duration >= 3.5;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
select title from collections where year between 2018 and 2020;

-- Исполнители, чье имя состоит из 1 слова;
select nick_name from artist where nick_name not like ('% %');

-- Название треков, которые содержат слово "мой"/"my"
select name from track where
name ilike '%my%' or
name ilike '%мой%';