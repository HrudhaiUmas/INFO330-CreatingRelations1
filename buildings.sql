CREATE TABLE IF NOT EXISTS buildings (
name VARCHAR(80) NOT NULL,  
shortname VARCHAR(10) UNIQUE, 
id INTEGER PRIMARY KEY AUTOINCREMENT 
);

INSERT INTO buildings (name, shortname)  VALUES
('Mary Gates Hall', 'MGH'), 
('Kane Hall', 'KNE'), 
('Gowen Hall', 'GWN');

CREATE TABLE IF NOT EXISTS rooms (
number INTEGER, 
buildingid INTEGER REFERENCES buildings(id), 
seating INTEGER
);

INSERT INTO rooms VALUES (400,  (SELECT id FROM buildings  WHERE shortname = 'MGH'), 50);
INSERT INTO rooms VALUES(350,  (SELECT id FROM buildings  WHERE shortname = 'KNE'), 100);
INSERT INTO rooms VALUES (200,  (SELECT id FROM buildings  WHERE shortname = 'GWN'), 500);