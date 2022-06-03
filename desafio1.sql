DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Plano(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_plano VARCHAR(255) NOT NULL,
    valor DECIMAL(8, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Artista(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL
)engine = InnoDB;

CREATE TABLE SpotifyClone.Usuario(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    data_assinatura DATETIME NOT NULL,
    plano_id INT,
	FOREIGN KEY(plano_id) REFERENCES Plano(id)
)engine = InnoDB;

CREATE TABLE SpotifyClone.Artista_Seguidos(
	artist_id INT NOT NULL,
	usuario_id INT NOT NULL,
    CONSTRAINT seguidos_id PRIMARY KEY (artist_id, usuario_id),
    FOREIGN KEY(artist_id) REFERENCES Artista(id),
	FOREIGN KEY(usuario_id) REFERENCES Usuario(id)
)engine = InnoDB;

CREATE TABLE SpotifyClone.Album(
     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     name_album VARCHAR(255) NOT NULL,
     ano_lancamento YEAR NOT NULL,
     artist_id INT,
     FOREIGN KEY(artist_id) REFERENCES Artista(id)
)engine = InnoDB;

CREATE TABLE SpotifyClone.Canções(
     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     musicas VARCHAR(255) NOT NULL,
     duração INT NOT NULL,
     album_id INT,
     FOREIGN KEY (album_id) REFERENCES Album(id)
)engine = InnoDB;

CREATE TABLE SpotifyClone.Historico_de_Reproduções(
     data_repro DATETIME NOT NULL,
     cançao_id INT,
     usuario_id INT,
     CONSTRAINT history_id PRIMARY KEY (cançao_id, usuario_id),
	 FOREIGN KEY(cançao_id) REFERENCES Canções(id),
	 FOREIGN KEY(usuario_id) REFERENCES Usuario(id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Plano (type_plano, valor)
VALUES
	('gratuito', 0),
    ('familiar', 7.99),
    ('universitário', 5.99),
    ('pessoal', 6.99);
    
INSERT INTO SpotifyClone.Artista (artist_name)
VALUES
	('Walter Phoenix'),
    ('Peter Strong'),
	('Lance Day'),
	('Freedie Shannon'),
	('Tyler Isle'),
    ('Fog');

INSERT INTO SpotifyClone.Usuario (user_name, idade, data_assinatura, plano_id)
VALUES
	('Thati', 23, "2019-10-20", 1),
    ('Cintia', 35, "2017-12-30", 2),
    ('Bill', 20, "2019-06-05", 3),
    ('Roger', 45, "2020-05-13", 4),
    ('Norman', 58, "2017-02-17", 4),
    ('Patrick', 33, "2017-01-06", 2),
    ('Vivian', 26, "2018-01-05", 3),
    ('Carol', 19, "2018-02-14", 3),
    ('Angelina', 42, "2018-04-29", 2),
    ('Paul', 46, "2017-01-17", 2);
    
INSERT INTO SpotifyClone.Artista_Seguidos (artist_id, usuario_id)
VALUES 
	('1', '1'),
    ('4', '1'),
	('3', '1'),
    ('1', '2'),
    ('3', '2'),
    ('2', '3'),
    ('1', '3'),
    ('4', '4'),
    ('5', '5'),
    ('6', '5'),
    ('6', '6'),
    ('3', '6'),
    ('1', '6'),
    ('2', '7'),
    ('5', '7'),
    ('1', '8'),
    ('5', '8'),
    ('6', '9'),
    ('4', '9'),
    ('3', '9'),
    ('2', '10'),
    ('6', '10');
    
INSERT INTO SpotifyClone.Canções (musicas, duração)
VALUES 
	('Soul For Us', 200),
	('Reflections Of Magic', 163),
	('Dance With Her Own', 116),
	('Troubles Of My Inner Fire', 203),
	('Time Fireworks', 152),
	('Magic Circus', 105),
	('Honey, So Do I', 207),
    ("Sweetie, Let's Go Wild", 139),
    ('She Knows', 244),
    ('Fantasy For Me', 100),
    ('Celebration Of More', 146),
    ('Rock His Everything', 223),
    ('Home Forever', 231),
    ('Diamond Power', 241),
    ("Let's Be Silly", 132),
    ('Thang Of Thunder', 240),
    ('Words Of Her Life', 185),
    ('Without My Streets', 176),
    ('Need Of The Evening', 190),
    ('History Of My Roses', 222),
    ('Without My Love', 111),
    ('Walking And Game', 123),
    ('Young And Father', 197),
    ('Finding My Traditions', 179),
    ('Walking And Man', 229),
    ('Hard And Time', 135),
    ("Honey, I'm A Lone Wolf", 150),
    ("She Thinks I Won't Stay Tonight", 166),
    ("He Heard You're Bad For Me", 154),
    ("He Hopes We Can't Stay", 210),
    ('I Know I Know', 117),
    ("He's Walking Away", 159),
    ("He's Trouble", 138),
    ('I Heard I Want To Bo Alone', 120),
    ('I Ride Alone', 151),
    ('Honey', 79),
    ('You Cheated On Me', 95),
    ("Wouldn't It Be Nice", 213),
    ('Baby', 136),
    ('You Make Me Feel So..', 83);
    
INSERT INTO SpotifyClone.Album (name_album, ano_lancamento, artist_id)
VALUES
	('Envious', 1990, 1),
    ('Exuberant', 1993, 1),
    ('Hallowed Steam', 1995, 2),
    ('Incandescent', 1998, 3),
    ('Temporary Culture', 2001, 4),
    ('Library of liberty', 2003, 4),
    ('Chained Down', 2007, 5),
    ('Cabinet of fools', 2012, 5),
    ('No guarantees', 2015, 5),
    ('Apparatus', 2015, 6);
    
INSERT INTO SpotifyClone.Historico_de_Reproduções (data_repro, cançao_id, usuario_id)
VALUES
	("2020-02-28 10:45:55", 36, 1),
    ("2020-05-02 05:30:35", 25, 1),
    ("2020-03-06 11:22:33", 23, 1),
    ("2020-08-05 08:05:17", 14, 1),
    ("2020-09-14 16:32:22", 15, 1),
    ("2020-01-02 07:40:33", 34, 2),
    ("2020-05-16 06:16:22", 24, 2),
    ("2020-10-09 12:27:48", 21, 2),
    ("2020-09-21 13:14:46", 39, 2),
    ("2020-11-13 16:55:13", 6, 3),
    ("2020-12-05 18:38:30", 3, 3),
    ("2020-07-30 10:00:00", 26, 3),
    ("2021-08-15 17:10:10", 2, 4),
    ("2021-07-10 15:20:30", 35, 4),
    ("2021-01-09 01:44:33", 27, 4),
    ("2020-07-03 19:33:28", 7, 5),
    ("2017-02-24 21:14:22", 12, 5),
    ("2020-08-06 15:23:43", 14, 5),
    ("2020-11-10 13:52:27", 1, 5),
    ("2019-02-07 20:33:48", 38, 6),
    ("2017-01-24 00:31:17", 29, 6),
    ("2017-10-12 12:35:20", 30, 6),
    ("2018-05-29 14:56:41", 22, 6),
    ("2018-05-09 22:30:49", 5, 7),
    ("2020-07-27 12:52:58", 4, 7),
    ("2018-01-16 18:40:43", 11, 7),
    ("2018-03-21 16:56:40", 39, 8),
    ("2020-10-18 13:38:05", 40, 8),
    ("2019-05-25 08:14:03", 32, 8),
    ("2021-08-15 21:37:09", 33, 8),
    ("2021-05-24 17:23:45", 16, 9),
    ("2018-12-07 22:48:52", 17, 9),
    ("2021-03-14 06:14:26", 8, 9),
    ("2020-04-01 03:36:00", 9, 9),
    ("2017-02-06 08:21:34", 20, 10),
    ("2017-12-04 05:33:43", 21, 10),
    ("2017-07-27 05:24:49", 12, 10),
    ("2017-12-25 01:03:57", 13, 10);