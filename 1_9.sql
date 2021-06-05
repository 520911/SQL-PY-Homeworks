-- Количество исполнителей в каждом жанре
select g.name, count(ag.artist_id) artist_count
from genre g
join artistgenre ag
on
g.genre_id = ag.genre_id
group by g.name


-- Количество треков, вошедших в альбомы 2019-2020 годов
select a.year, t.name, count(t.track_id) track_count
from track t
join album a
on t.album_id = a.album_id
where t.year between 2019 and 2020
group by a.year, t.name


-- Средняя продолжительность треков по каждому альбому
select a.name, round(avg(t.duration), 2)
from album a
join track t
on 
a.album_id = t.album_id
group by a.name


-- Все исполнители, которые не выпустили альбомы в 2020 году
-- У меня нет альбомов выпущенных в 2020 году, взял 2019 для проверки
select ar.nick_name artist, al.name album_name, al.year album_year
from artist ar
join artistalbum aa
on
ar.artist_id = aa.artist_id
join album al
on
aa.album_id = al.album_id
where 
al.year != 2018


-- Названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
select col.title collection, ar.nick_name
from collections col
join trackcollection tc
on col.collection_id = tc.collection_id
join track tr
on tr.track_id = tc.track_id
join album al
on al.album_id = tr.album_id
join artistalbum aa
on aa.album_id = al.album_id
join artist ar
on ar.artist_id = aa.artist_id
where ar.nick_name = 'Evanescence'



-- Название альбомов, в которых присутствуют исполнители более 1 жанра
select al.name album_name, ar.nick_name artist
from album al
join artistalbum aa
on al.album_id = aa.album_id
join artist ar
on ar.artist_id = aa.artist_id
join (
	select artist_id
	from artistgenre
	group by artist_id
	having count(genre_id) > 1) j1
on j1.artist_id = ar.artist_id


-- Наименование треков, которые не входят в сборники
select tr.name track_name
from track tr
left join trackcollection tc
on tr.track_id = tc.track_id
where tc.collection_id is null


-- Найти исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
select ar.nick_name 
from artist ar
join artistalbum aa
on ar.artist_id = aa.artist_id
join (
select album_id from track
where duration =
(select min(duration) minimal from track)
) tr1
on tr1.album_id = aa.album_id



-- Название альбомов, содержащих наименьшее количество треков
select name from album al
join 
(select album_id, count(album_id) count_tracks from track
group by album_id) ct
on al.album_id = ct.album_id
where ct.count_tracks = (
select min(count_tracks) counts from (
select album_id, count(album_id) count_tracks from track
group by album_id) mn
)