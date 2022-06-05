DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.artists(
    artist_id INT NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL,
    CONSTRAINT PRIMARY KEY (artist_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.artists (artist_name) VALUES
	('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon'),
    ('Tyler Isle'),
    ('Fog');

CREATE TABLE SpotifyClone.albuns(
    album_id INT NOT NULL AUTO_INCREMENT,
    album_name VARCHAR(50) NOT NULL,
    artist_id INT NOT NULL,
    year_released YEAR NOT NULL,
    CONSTRAINT PRIMARY KEY (album_id),
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.albuns (album_name, artist_id, year_released) VALUES
	('Envious',1,1990),
    ('Exuberant',1,1993),
    ('Hallowed Steam',2,1995),
    ('Incandescent',3,1998),
    ('Temporary Culture',4,2001),
    ('Library of liberty',4,2003),
    ('Chained Down',5,2007),
    ('Cabinet of fools',5,2012),
    ('No guarantees',5,2015),
	('Apparatus',6,2015);
    
CREATE TABLE SpotifyClone.musics(
    music_id INT NOT NULL AUTO_INCREMENT,
    album_id INT NOT NULL,
    music_name VARCHAR(50) NOT NULL,
    music_duration INT NOT NULL,
    CONSTRAINT PRIMARY KEY (music_id),
    FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.musics (album_id, music_name, music_duration) VALUES
	(1,'Soul For Us',200),
    (1,'Reflections Of Magic',163),
    (1,'Dance With Her Own',116),
    (2,'Troubles Of My Inner Fire',203),
    (2,'Time Fireworks',152),
    (3,'Magic Circus',105),
    (3,'Honey, So Do I',207),
    (3,'Sweetie, Let''s Go Wild',139),
    (3,'She Knows',244),
    (4,'Fantasy For Me',100),
    (4,'Celebration Of More',146),
    (4,'Rock His Everything',223),
    (4,'Home Forever',231),
    (4,'Diamond Power',241),
    (4,'Let''s Be Silly',132),
    (5,'Thang Of Thunder',240),
    (5,'Words Of Her Life',185),
    (5,'Without My Streets',176),
    (6,'Need Of The Evening',190),
    (6,'History Of My Roses',222),
    (6,'Without My Love',111),
    (6,'Walking And Game',123),
    (6,'Young And Father',197),
    (7,'Finding My Traditions',179),
    (7,'Walking And Man',229),
    (7,'Hard And Time',135),
    (7,'Honey, I''m A Lone Wolf',150),
    (8,'She Thinks I Won''t Stay Tonight',166),
    (8,'He Heard You''re Bad For Me',154),
    (8,'He Hopes We Can''t Stay',210),
    (8,'I Know I Know',117),
    (9,'He''s Walking Away',159),
    (9,'He''s Trouble',138),
    (9,'I Heard I Want To Bo Alone',120),
    (9,'I Ride Alone',151),
    (10,'Honey',79),
    (10,'You Cheated On Me',95),
    (10,'Wouldn''t It Be Nice',213),
    (10,'Baby',136),
    (10,'You Make Me Feel So..',83);
    
CREATE TABLE SpotifyClone.plans(
    plan_id INT NOT NULL AUTO_INCREMENT,
    plan_name VARCHAR(50) NOT NULL,
    plan_value DECIMAL(4, 2) NOT NULL,
    CONSTRAINT PRIMARY KEY (plan_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.plans (plan_name,plan_value) VALUES
    ('gratuito', '0'),
    ('familiar', '7.99'),
    ('universitário', '5.99'),
    ('pessoal', '6.99');