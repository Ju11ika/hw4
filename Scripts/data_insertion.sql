INSERT INTO Genre (genre_name) VALUES 
('Rock'),
('Pop'),
('Jazz');


INSERT INTO Artist (artist_name) VALUES 
('The Beatles'),
('Adele'),
('Miles Davis'),
('Taylor Swift');


INSERT INTO Album (album_name, album_release_year) VALUES 
('Abbey Road', 1969),
('25', 2015),
('1989', 2014)
('Lover', 2019)
;


INSERT INTO Album (album_name, album_release_year) VALUES 
('Abbey Road', 1969),
('25', 2015),
('1989', 2014),
('Folklore', 2020);



INSERT INTO Song (song_id, album_id, song_name, song_duration) VALUES 
(1, 1, 'Come Together', 259),  -- 4:19
(2, 1, 'Something', 182),      -- 3:02
(3, 2, 'Hello', 295),          -- 4:55
(4, 2, 'Someone Like You', 285), -- 4:45
(5, 2, 'My tears ricochet', 259), -- 4:19
(6, 3, 'Shake It Off', 219),   -- 3:39
(7, 3, 'Blank Space', 231),    -- 3:51
(8, 4, 'Cruel summer', 178),  --2:58
(9, 4, 'Lover', 221)  -- 3:41
--(4, 'my own', 222),
--(4, 'own My', 222),
--(4, 'my', 222),
--(4, 'oh my god', 222),
--(4, 'myself', 222),
--(4, 'by myself', 222),
--(4, 'bemy self', 222),
--(4, 'by myself by', 222),
--(4, 'beemy', 222),
--(4, 'premyne', 2222)
;


INSERT INTO Collection (collection_name, collection_release_year) VALUES 
('Greatest Hits 2018', 2018),
('Best of Adele', 2019),
('Jazz Classics', 2020),
('Pop Anthems', 2020);



INSERT INTO ArtistGenre (artist_id, genre_id) VALUES 
(1, 1),  
(2, 2), 
(3, 3),  
(4, 2);  



INSERT INTO ArtistAlbum (artist_id, album_id) VALUES 
(1, 1),
(2, 2), 
(4, 3),
(4, 4),
(4, 5)
;  


INSERT INTO CollectionSong (collection_id, song_id) VALUES 
(1, 3),  
(2, 3),   
(3, 4),  
(4, 6),  
(4, 7);   


