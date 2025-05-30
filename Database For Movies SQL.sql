CREATE TABLE database_for_movies (
-- column name, data type, CONSTRAINT

movie_id INT PRIMARY KEY,
name_of_movie VARCHAR(20) NOT NULL,
genre VARCHAR(13) NOT NULL,
releasing_date VARCHAR(10) NOT NULL,
runtime VARCHAR(13) NOT NULL,
country_origin VARCHAR(15) NOT NULL,
language_movie VARCHAR(15) NOT NULL,
);

INSERT INTO database_for_movies (movie_id, name_of_movie, genre, releasing_date, runtime, country_origin, language_movie)
VALUES (1, 'The Wolf of Wall Str', 'Comedy', '25.12.2013', '3 hours', 'America', 'English'),
       (2, 'The Big Short', 'Comdey/Thrill', '11.12.2015', '2h 10m', 'America', 'English'), 
	   (3, 'Fight Club', 'Action/Thrill', '15.10.1999', '2h 19m', 'America', 'English'),
	   (4, 'Honeyland', 'Documentary', '26.07.2019', '1h 25m', 'Macedonia', 'Macedonian'),
	   (5, 'Enemy', 'Thriller', '14.03.2014', '1h 35m', 'Canada', 'English'),
	   (6, 'Ferrari', 'Sport', '25.12.2023', '2h 10m', 'Italy', 'Italian'), 
	   (7, 'Tides', 'Sci-fi', '14.10.2017', '1h 44m', 'Germany', 'German'),
	   (8, 'Zorba', 'Adventure', '17.12.1964','2h 22m', 'Greek', 'English'),
	   (9, 'Before the Rain', 'War/Drama', '24.02.1995', '1h 53m', 'Macedonia', 'Macedonian'), 
	   (10, 'Shadows', 'Horror', '02.11.2007', '2hours', 'Macedonia', 'Macedonian');


	   SELECT * FROM database_for_movies;