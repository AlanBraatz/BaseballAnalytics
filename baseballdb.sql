CREATE DATABASE baseball_db;

USE baseball_db;

CREATE TABLE teams (
  team_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL
);

CREATE TABLE players (
  player_id INT PRIMARY KEY AUTO_INCREMENT,
  team_id INT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  position VARCHAR(2) NOT NULL,
  FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

CREATE TABLE batting_stats (
  stat_id INT PRIMARY KEY AUTO_INCREMENT,
  player_id INT,
  games INT,
  at_bats INT,
  hits INT,
  doubles INT, 
  triples INT,
  home_runs INT,
  runs_batted_in INT,
  stolen_bases INT,
  avg DECIMAL(4,3),
  FOREIGN KEY (player_id) REFERENCES players(player_id)
);

CREATE TABLE pitching_stats (
  stat_id INT PRIMARY KEY AUTO_INCREMENT,
  player_id INT,
  games_pitched INT,
  games_started INT, 
  innings_pitched DECIMAL(3,1),
  hits INT,
  runs INT,
  earned_runs INT,
  walks INT,
  strikeouts INT,
  era DECIMAL(3,2),
  FOREIGN KEY (player_id) REFERENCES players(player_id)
);

CREATE TABLE fielding_stats (
  stat_id INT PRIMARY KEY AUTO_INCREMENT,
  player_id INT,
  games INT,
  putouts INT,
  assists INT,
  errors INT,
  fielding_pct DECIMAL(3,3),
  FOREIGN KEY (player_id) REFERENCES players(player_id)
);

CREATE VIEW batting_view AS  
SELECT p.first_name, p.last_name, p.position, b.*
FROM players p
JOIN batting_stats b ON p.player_id = b.player_id;

CREATE VIEW pitching_view AS
SELECT p.first_name, p.last_name, p.position, f.* 
FROM players p
JOIN pitching_stats f ON p.player_id = f.player_id;

CREATE VIEW fielding_view AS
SELECT p.first_name, p.last_name, p.position, f.*
FROM players p  
JOIN fielding_stats f ON p.player_id = f.player_id;

INSERT INTO teams (name, city)
VALUES
  ('Phillies', 'Philadelphia');

INSERT INTO players (team_id, first_name, last_name, position)
VALUES
  (1, 'Bryce', 'Harper', 'OF'),
  (1, 'J.T.', 'Realmuto', 'C'),
  (1, 'Jean', 'Segura', 'IF'),
  (1, 'Kyle', 'Schwarber', 'OF'),
  (1, 'Nick', 'Castellanos', 'OF'),
  (1, 'Alec', 'Bohm', 'IF'),
  (1, 'Rhys', 'Hoskins', 'IF'),  
  (1, 'Bryson', 'Stott', 'IF'),
  (1, 'Brandon', 'Marsh', 'OF'),
  (1, 'Edmundo', 'Sosa', 'IF'),
  (1, 'Zack', 'Wheeler', 'P'),
  (1, 'Aaron', 'Nola', 'P'),
  (1, 'Ranger', 'Suarez', 'P'),
  (1, 'Zach', 'Eflin', 'P'),
  (1, 'Noah', 'Syndergaard', 'P'),
  (1, 'Jose', 'Alvarado', 'P'),
  (1, 'Seranthony', 'Dominguez', 'P'),
  (1, 'David', 'Robertson', 'P'),
  (1, 'Connor', 'Brogdon','P'),
  (1, 'Andrew', 'Bellatti', 'P'),
  (1, 'J.T.', 'Realmuto', 'C'),
  (1, 'Garrett', 'Stubbs', 'C');


INSERT INTO batting_stats (player_id, games, at_bats, hits, doubles, triples, home_runs, runs_batted_in, stolen_bases, avg)
VALUES
  (1, 100, 300, 80, 15, 1, 30, 75, 10, .267),
  (2, 120, 400, 110, 25, 0, 20, 65, 5, .275),
  (3, 140, 450, 130, 30, 3, 15, 70, 10, .289),
  (4, 130, 410, 100, 18, 1, 35, 95, 2, .244),
  (5, 155, 550, 140, 32, 1, 35, 110, 5, .255), 
  (6, 80, 250, 65, 12, 1, 10, 40, 1, .260),
  (7, 150, 500, 120, 32, 0, 30, 90, 3, .240),
  (8, 60, 150, 38, 8, 2, 5, 25, 2, .253),
  (9, 90, 275, 70, 15, 3, 12, 50, 8, .255),
  (10, 50, 125, 30, 5, 1, 2, 15, 0, .240);

INSERT INTO pitching_stats (player_id, games_pitched, games_started, innings_pitched, hits, runs, earned_runs, walks, strikeouts, era)
VALUES
  (11, 30, 30, 210, 180, 80, 75, 35, 200, 3.21),
  (12, 30, 30, 205, 190, 85, 78, 30, 195, 3.38),
  (13, 20, 10, 80, 70, 35, 30, 20, 85, 3.38),
  (14, 25, 25, 160, 150, 65, 60, 25, 140, 3.38),
  (15, 20, 15, 95, 90, 45, 40, 15, 80, 3.79),
  (16, 65, 0, 60, 50, 20, 15, 25, 75, 2.25),
  (17, 60, 0, 55, 45, 15, 10, 20, 85, 1.64), 
  (18, 50, 0, 55, 45, 20, 15, 15, 60, 2.45),
  (19, 40, 0, 45, 40, 15, 10, 10, 55, 2.00),
  (20, 35, 0, 35, 30, 10, 8, 12, 38, 2.06);

INSERT INTO fielding_stats (player_id, games, putouts, assists, errors, fielding_pct) 
VALUES
  (1, 100, 180, 15, 2, .990),
  (2, 120, 220, 20, 4, .983),
  (3, 140, 325, 425, 12, .974),
  (4, 130, 145, 5, 3, .980),
  (5, 155, 165, 8, 4, .977),
  (6, 80, 195, 285, 7, .981),
  (7, 150, 950, 82, 14, .986),
  (8, 60, 62, 95, 4, .968),
  (9, 90, 175, 5, 2, .989),
  (10, 50, 44, 82, 3, .968),
  (11, 30, 12, 28, 2, .923),
  (12, 30, 15, 35, 0, 1.000),
  (13, 20, 5, 12, 1, .941),
  (14, 25, 7, 15, 0, 1.000),
  (15, 20, 4, 10, 0, 1.000),
  (21, 60, 490, 48, 5, .990),
  (22, 40, 315, 35, 3, .992);