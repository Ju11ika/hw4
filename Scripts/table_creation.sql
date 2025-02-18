CREATE TABLE IF NOT EXISTS Genre (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE IF NOT EXISTS Artist (
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS Album (
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(100) NOT NULL,
    album_release_year INT
);


CREATE TABLE IF NOT EXISTS Song (
    song_id SERIAL PRIMARY KEY,
    album_id INT NOT NULL REFERENCES Album(album_id),
    song_name VARCHAR(100) NOT NULL,
    song_duration INT NOT NULL
);


CREATE TABLE IF NOT EXISTS Collection (
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(100) NOT NULL,
	collection_release_year INT NOT NULL
);


CREATE TABLE IF NOT EXISTS ArtistGenre (
    artist_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (artist_id, genre_id),
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

CREATE TABLE IF NOT EXISTS ArtistAlbum (
    artist_id INT NOT NULL REFERENCES Artist(artist_id),
    album_id INT NOT NULL REFERENCES Album(album_id),
    CONSTRAINT pk PRIMARY KEY (artist_id, album_id)
);


CREATE TABLE IF NOT EXISTS Collection (
    collection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR(100) NOT NULL,
    collection_release_year INT NOT NULL
);


CREATE TABLE IF NOT EXISTS CollectionSong (
    collection_id INT NOT NULL REFERENCES Collection(collection_id),
    song_id INT NOT NULL REFERENCES Song(song_id),
    PRIMARY KEY (collection_id, song_id)
);
