-- insert
INSERT INTO Movies VALUES (0001, "RRR", '2022', 1001);
INSERT INTO Movies VALUES (0002, "Avatar", '2023', 1002);
INSERT INTO Movies VALUES (0003, "2018", '2023', 1003);
INSERT INTO Movies VALUES (0004, "good night", '2023', 1004);

INSERT INTO directors VALUES (1001, "Rajamouli");
INSERT INTO directors VALUES (1002, "James Cameron");
INSERT INTO directors VALUES (1003, "Joseph");
INSERT INTO directors VALUES (1005, "Mani sharma");

INSERT INTO genres VALUES (19991, "drama");
INSERT INTO genres VALUES (19992, "Action");
INSERT INTO genres VALUES (19993, "Survival triller");

INSERT INTO movie_genres VALUES (0001, 19991);
INSERT INTO movie_genres VALUES (0002, 19992);
INSERT INTO movie_genres VALUES (0003, 19993);

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
