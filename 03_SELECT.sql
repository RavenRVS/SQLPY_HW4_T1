--1. Количество исполнителей в каждом жанре;
SELECT genre_name, count(genre_name)  FROM genre g
JOIN artist_genres ag ON ag.genre_id = g.genre_id  
GROUP BY genre_name;

--2. Количество треков, вошедших в альбомы 2019-2020 годов;
SELECT album_name, album_realase_year, count(album_name)  FROM album a
JOIN track t ON a.album_id = t.album_id 
WHERE album_realase_year >= 2019 AND album_realase_year <= 2020
GROUP BY album_name, album_realase_year;

--3. Средняя продолжительность треков по каждому альбому;
SELECT album_name, AVG(track_duration)  FROM album a
JOIN track t ON a.album_id = t.album_id 
GROUP BY album_name;

--4. Все исполнители, которые не выпустили альбомы в 2020 году;
SELECT artist_name FROM artist a
JOIN album_autors aa ON a.artist_id = aa.artist_id 
JOIN album a2 ON aa.album_id = a2.album_id
WHERE a2.album_realase_year != 2020
GROUP BY artist_name;

--5. Названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT digest_name FROM digest d 
JOIN track_in_digest tid ON d.digest_id = tid.digest_id 
JOIN track t ON tid.track_id = t.track_id
JOIN album_autors aa ON t.album_id = aa.album_id 
JOIN artist a ON aa.artist_id = a.artist_id 
WHERE artist_name LIKE '%Nirvana%';

--6. Название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT album_name  FROM artist a
JOIN artist_genres ag ON a.artist_id = ag.artist_id
JOIN album_autors aa ON a.artist_id = aa.artist_id 
JOIN album a2 ON a2.album_id = aa.album_id 
GROUP BY album_name 
HAVING count(*) > 1;

--7. Наименование треков, которые не входят в сборники;
SELECT track_name  FROM track t
LEFT JOIN track_in_digest tid ON t.track_id = tid.track_id 
WHERE digest_id IS NULL;

--8. Исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT artist_name, track_duration FROM track t 
JOIN album_autors aa ON t.album_id = aa.album_id
JOIN artist a ON aa.artist_id = a.artist_id
WHERE track_duration = (SELECT min(track_duration) FROM track t2);

--9. Название альбомов, содержащих наименьшее количество треков.
SELECT album_name, count(track_id) FROM album a
JOIN track t ON a.album_id = t.album_id
group by a.album_name 
having count(track_id) = (select count(album_id) from track GROUP BY album_id ORDER BY count(album_id)  LIMIT 1)

