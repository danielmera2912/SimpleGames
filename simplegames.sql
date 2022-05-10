CREATE DATABASE IF NOT EXISTS simplegames;
use simplegames;
CREATE TABLE juego (nombre VARCHAR(35), PRIMARY KEY (nombre));
CREATE TABLE estadisticas (nombre VARCHAR(35), score int, juego VARCHAR(35), PRIMARY KEY (nombre,score,juego));
alter table estadisticas add foreign key (juego) references juego (nombre);
INSERT INTO juego VALUES ("BlackJack");
INSERT INTO juego VALUES ("Hangman");
INSERT INTO juego VALUES ("Conecta4");
INSERT INTO juego VALUES ("Battleship");
INSERT INTO estadisticas VALUES ("Juan",132,"Hangman");
INSERT INTO estadisticas VALUES ("Rosa",131,"Battleship");
INSERT INTO estadisticas VALUES ("Juan",113,"BlackJack");
INSERT INTO estadisticas VALUES ("Abel",103,"BlackJack");
INSERT INTO estadisticas VALUES ("Juan José",13,"Battleship");