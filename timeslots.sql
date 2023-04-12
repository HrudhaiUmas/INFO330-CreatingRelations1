CREATE TABLE IF NOT EXISTS timeslots (
starttime TIME, 
endtime TIME, 
id INTEGER PRIMARY KEY
);

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