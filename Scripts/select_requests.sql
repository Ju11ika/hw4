SELECT song_name, song_duration 
FROM Song 
ORDER BY song_duration DESC 
LIMIT 1;


SELECT song_name 
FROM Song 
WHERE song_duration >= 210;  


SELECT collection_name 
FROM Collection 
WHERE collection_release_year BETWEEN 2018 AND 2020;


SELECT artist_name 
FROM Artist 
WHERE artist_name NOT LIKE '% %';


SELECT song_name
FROM Song
WHERE (LOWER(song_name) ILIKE 'мой %' OR LOWER(song_name) ILIKE 'my %')
OR (LOWER(song_name) ILIKE '% мой' OR LOWER(song_name) ILIKE '% my')
OR (LOWER(song_name) ILIKE '% мой %' OR LOWER(song_name) ILIKE '% my %')
OR (LOWER(song_name) ILIKE 'мой' OR LOWER(song_name) ILIKE 'my');


SELECT Genre.genre_name, COUNT(ArtistGenre.artist_id) AS artist_count 
FROM Genre
LEFT JOIN ArtistGenre ON Genre.genre_id = ArtistGenre.genre_id 
GROUP BY Genre.genre_name;


SELECT COUNT(Song.song_id) AS track_count 
FROM Song
JOIN Album ON Song.album_id = Album.album_id 
WHERE Album.album_release_year BETWEEN 2019 AND 2020;


SELECT DISTINCT Artist.artist_name 
FROM Artist 
WHERE Artist.artist_id NOT IN (
    SELECT Artist.artist_id
    FROM Artist
    JOIN ArtistAlbum ON Artist.artist_id = ArtistAlbum.artist_id 
    JOIN Album ON ArtistAlbum.album_id = Album.album_id 
    WHERE Album.album_release_year = 2020
);



SELECT DISTINCT Collection.collection_name 
FROM Collection 
JOIN CollectionSong ON Collection.collection_id = CollectionSong.collection_id 
JOIN Song ON CollectionSong.song_id = Song.song_id 
JOIN ArtistAlbum ON Song.album_id = ArtistAlbum.album_id 
JOIN Artist ON ArtistAlbum.artist_id = Artist.artist_id 
WHERE Artist.artist_name = 'Adele';



