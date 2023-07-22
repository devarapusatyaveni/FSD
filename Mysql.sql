CREATE TABLE Movies(movieId int(10) PRIMARY KEY, title varchar(20), release_year varchar(20), director_Id int(10));
CREATE TABLE directors (director_Id int(10) PRIMARY KEY, director_name varchar(20));
CREATE TABLE genres (genre_Id int(10) PRIMARY KEY, genre_name varchar(20));
CREATE TABLE movie_genres (movie_Id int(10) PRIMARY KEY, genre_Id int(10));

-- insert
INSERT INTO Movies VALUES (0001, "Sarkar Vaari Paata", '2022', 01);
INSERT INTO Movies VALUES (0002, "Avatar2", '2023', 02);
INSERT INTO Movies VALUES (0003, "2018", '2023', 03);
INSERT INTO Movies VALUES (0004, "Bhoo", '2023', 04);

INSERT INTO directors VALUES (01, "Parasuram");
INSERT INTO directors VALUES (02, "James Cameron");
INSERT INTO directors VALUES (03, "Joseph");
INSERT INTO directors VALUES (05, "Sri Kishore");

INSERT INTO genres VALUES (1, "drama and comedy");
INSERT INTO genres VALUES (2, "Action");
INSERT INTO genres VALUES (3, "Survival triller");

INSERT INTO movie_genres VALUES (0001, 1);
INSERT INTO movie_genres VALUES (0002, 2);
INSERT INTO movie_genres VALUES (0003, 3);

-- query 1
select m.title, d.director_name from Movies m, directors d where m.director_Id = d.director_Id;

-- query 2
select m.title, m.release_year, d.director_name from Movies m left join directors d on m.director_Id = d.director_Id;


-- query 3
select  d.director_name, m.title from directors d left join Movies m on m.director_Id = d.director_Id ;


-- query 4
select m.title, m.release_year, d.director_name from Movies m left join directors d on m.director_Id = d.director_Id
union 
select m.title, m.release_year, d.director_name from Movies m right join directors d on m.director_Id = d.director_Id;


-- query 5
select m.title, g.genre_name from Movies m join movie_genres mg on m.movieId = mg.movie_Id join genres g 
on mg.genre_Id = g.genre_Id;
