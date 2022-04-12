CREATE DATABASE movie;
USE movie;
CREATE TABLE actors(actor varchar(20),ayear int);
INSERT INTO actors(actor,ayear)VALUES('cage',1964);
INSERT INTO actors(actor,ayear)VALUES('Hanks',1956);
INSERT INTO actors(actor,ayear)VALUES('maguire',1975);
INSERT INTO actors(actor,ayear)VALUES('macdonald',1957);
CREATE TABLE movies(title varchar(20),director varchar(20),myear int,rating float(10));
ALTER TABLE movies CHANGE titie title varchar(20);
INSERT INTO  movies(title,director,myear,rating)VALUES('Fargo','Coen',1996,8.2);
INSERT INTO  movies(title,director,myear,rating)VALUES('Raising Arizona','Coen',1987,7.6);
INSERT INTO  movies(title,director,myear,rating)VALUES('Spiderman','Raimy',2002,7.4);
INSERT INTO  movies(title,director,myear,rating)VALUES('Wonderboy','Hanson',2000,7.6);
CREATE TABLE acts(actor varchar(20),title varchar(20));
INSERT INTO acts(actor,title)VALUES('cage','Raising Arizona');
INSERT INTO acts(actor,title)VALUES('Maguire','Spiderman');
INSERT INTO acts(actor,title)VALUES('Maguire','wonderboys');
INSERT INTO acts(actor,title)VALUES('McDormand','Fargo');
INSERT INTO acts(actor,title)VALUES('McDormand','Raising Arizona');
INSERT INTO acts(actor,title)VALUES('McDormand','wonderboys');
CREATE TABLE Directors(director varchar(20),dyear int);
INSERT INTO Directors(director,dyear)VALUES('coen',1954);
INSERT INTO Directors(director,dyear)VALUES('hanson',1945);
INSERT INTO Directors(director,dyear)VALUES('Raimy',1959);
SELECT*FROM movies WHERE myear>1997;
SELECT*FROM movies WHERE director="hanson"and myear>1997;
SELECT DISTINCT title,rating FROM MOVIES;
SELECT actor,director FROM actors,movies;
SELECT  director="Coen",actor="McDormand"FROM actors,movies;



