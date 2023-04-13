CREATE TABLE IF NOT EXISTS timeslots (
starttime TIME, 
endtime TIME, 
id INTEGER PRIMARY KEY
);

INSERT INTO timeslots (id, starttime, endtime) VALUES (1, '09:00', '10:30');
INSERT INTO timeslots (id, starttime, endtime) VALUES (2, '05:00', '7:30');
INSERT INTO timeslots (id, starttime, endtime) VALUES (3, '09:30', '1:30');

CREATE TABLE rooms_temp (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  number INTEGER,
  buildingid INTEGER REFERENCES buildings(id),
  seating INTEGER
);

INSERT INTO rooms_temp (number, buildingid, seating)
SELECT number, buildingid, seating FROM rooms;

DROP TABLE rooms;
ALTER TABLE rooms_temp RENAME TO rooms; 