CREATE TABLE actors (
	actor_id SMALLINT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	movie_id SMALLINT NOT NULL,
	last_update TIMESTAMP NOT NULL,
	PRIMARY KEY (actor_id)
);
INSERT INTO actors (movie_id, actor_id, first_name, last_name, last_update)
VALUES (1, 1, 'Mark', 'Hamill', NOW());

INSERT INTO actors (movie_id, actor_id, first_name, last_name, last_update)
VALUES (1, 2, 'Harrison', 'Ford', NOW());

INSERT INTO actors (movie_id, actor_id, first_name, last_name, last_update)
VALUES (3, 10, 'Seth', 'Rogen', NOW());

INSERT INTO actors (movie_id, actor_id, first_name, last_name, last_update)
VALUES (3, 11, 'James', 'Franco', NOW());

INSERT INTO actors (movie_id, actor_id, first_name, last_name, last_update)
VALUES (2, 3, 'Sam', 'Neill', NOW());

INSERT INTO actors (movie_id, actor_id, first_name, last_name, last_update)
VALUES (2, 4, 'Laura', 'Dern', NOW());

INSERT INTO actors (movie_id, actor_id, first_name, last_name, last_update)
VALUES (2, 5, 'Jeff', 'Goldblum', NOW());

INSERT INTO actors (movie_id, actor_id, first_name, last_name, last_update)
VALUES (4, 6, 'Charlie', 'Hunnam', NOW());

INSERT INTO actors (movie_id, actor_id, first_name, last_name, last_update)
VALUES (4, 7, 'Idris', 'Elba', NOW());

INSERT INTO actors (movie_id, actor_id, first_name, last_name, last_update)
VALUES (4, 8, 'Rinko', 'Kikuchi', NOW());

INSERT INTO actors (movie_id, actor_id, first_name, last_name, last_update)
VALUES (4, 9, 'Charlie', 'Day', NOW());


CREATE TABLE reviews(
	Movie_id SMALLINT NOT NULL,
	reviews_id SMALLINT NOT NULL,
	metacritic VARCHAR(50) NOT NULL,
	rotten VARCHAR(50) NOT NULL,
	last_update TIMESTAMP NOT NULL,
	PRIMARY KEY (reviews_id)
);
INSERT INTO reviews(movie_id, reviews_id, metacritic, rotten, last_update)
VALUES (4, 1,'Metacritic: 64','Rotten Tomatoes: 71%', NOW());

INSERT INTO reviews(movie_id, reviews_id, metacritic, rotten, last_update)
VALUES (3, 2, 'Metacritic: 64','Rotten Tomatoes: 68%', NOW());

INSERT INTO reviews(movie_id, reviews_id, metacritic, rotten, last_update)
VALUES (1, 3,'Metacritic: 92','Rotten Tomatoes: 93%', NOW());

INSERT INTO reviews(movie_id, reviews_id, metacritic, rotten, last_update)
VALUES (2, 4,'Metacritic: 68','Rotten Tomatoes: 93%', NOW());


CREATE TABLE directors (
	director_id SMALLINT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	movie_id SMALLINT NOT NULL,
	last_update TIMESTAMP NOT NULL,
	PRIMARY KEY (director_id)
);
INSERT INTO directors(movie_id, director_id, first_name, last_name, last_update)
VALUES(1, 1, 'George', 'Lucas', NOW());

INSERT INTO directors(movie_id, director_id, first_name, last_name, last_update)
VALUES(2, 2, 'Stephen', 'Spielberg', NOW());

INSERT INTO directors(movie_id, director_id, first_name, last_name, last_update)
VALUES(4, 3, 'Guillermo', 'Del Torro', NOW());

INSERT INTO directors(movie_id, director_id, first_name, last_name, last_update)
VALUES(3, 4, 'David' , 'Green', NOW());


CREATE TABLE revenue (
	revenue_id SMALLINT NOT NULL,
	revenue VARCHAR(50) NOT NULL,
	cost VARCHAR(50) NOT NULL,
	profit VARCHAR(50) NOT NULL,
	last_update TIMESTAMP NOT NULL,
	movie_id SMALLINT NOT NULL,
	PRIMARY KEY (revenue_id)
	);
INSERT INTO revenue(movie_id, revenue_id, revenue, cost, profit, last_update)
VALUES(4, 1, '411 Million Box Office', 'Budget: 180 Million', 'Total Profit: 231 Million', NOW());

INSERT INTO revenue(movie_id, revenue_id, revenue, cost, profit, last_update)
VALUES(1, 2, ' 775.4 Million Box Office', 'Budget: 11 Million', 'Total Profit: 764.4 Million', NOW());

INSERT INTO revenue(movie_id, revenue_id, revenue, cost, profit, last_update)
VALUES(3, 3, ' 101.6 Million Box Office', 'Budget: 27 Million', 'Total Profit: 74.6 Million', NOW());

INSERT INTO revenue(movie_id, revenue_id, revenue, cost, profit, last_update)
VALUES(2, 4, ' 1.029 Billion Box Office', 'Budget: 63 Million', 'Total Profit: 966 Million', NOW());


CREATE TABLE movies (
	movies_id SMALLINT NOT NULL,
	movies VARCHAR(50) NOT NULL,
	genre VARCHAR(50) NOT NULL,
	year VARCHAR(50) NOT NULL,
	length VARCHAR(50) NOT NULL,
	revenue_id SMALLINT NOT NULL,
	actor_id SMALLINT NOT NULL,
	director_id SMALLINT NOT NULL,
	reviews_id SMALLINT NOT NULL,
	last_update TIMESTAMP NOT NULL,
	PRIMARY KEY (movies_id),
	FOREIGN KEY (reviews_id) REFERENCES reviews(reviews_id),
	FOREIGN KEY (director_id) REFERENCES directors(director_id),
	FOREIGN KEY (revenue_id) REFERENCES revenue(revenue_id),
	FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
);
INSERT INTO movies(movies_id, movies, genre, year, length, revenue_id, actor_id, director_id, reviews_id, last_update)
VALUES (1, 'A New Hope', 'Science Fiction', '1977' , '2h 1m', 2, 1, 1, 3, NOW());

INSERT INTO movies(movies_id, movies, genre, year, length, revenue_id, actor_id, director_id, reviews_id, last_update)
VALUES (2, 'Jurassic Park', 'Science Fiction', '1993', '2h 7m', 4, 3, 2, 4,  NOW());

INSERT INTO movies(movies_id, movies, genre, year, length, revenue_id, actor_id, director_id, reviews_id, last_update)
VALUES (3, 'Pineapple Express', 'Comedy', '2008', '1hr 57min', 3, 10, 4, 2,  NOW());

INSERT INTO movies(movies_id, movies, genre, year, length, revenue_id, actor_id, director_id, reviews_id, last_update)
VALUES (4, 'Pacific Rim', 'Science Fiction/Action', '2013', '2h 12m', 1, 6, 3, 1, NOW());
