DROP TABLE   if EXISTS movie;
CREATE TABLE movie(
   id INTEGER PRIMARY KEY,
   name TEXT,
   director TEXT,
   release TEXT
);

DROP TABLE IF EXISTS  actor;
CREATE TABLE actor(
   id INTEGER PRIMARY KEY,
   name TEXT
);

DROP TABLE IF EXISTS movie_actors;

CREATE TABLE movie_actors (
    id INTEGER PRIMARY KEY,
    movie_id INTEGER,
    actor_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movie(id),
    FOREIGN KEY (actor_id) REFERENCES actor(id)
);

DROP TABLE IF EXISTS genre ;
CREATE TABLE genre(
   id INTEGER PRIMARY KEY,
   name TEXT
);

DROP TABLE IF EXISTS movie_genre;
CREATE TABLE movie_genre(
   movie_id INTEGER,
   genre_id INTEGER,
   FOREIGN KEY (movie_id) REFERENCES movie(id),
   FOREIGN KEY (genre_id) REFERENCES genre(id)
);