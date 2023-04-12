CREATE TABLE IF NOT EXISTS rooms (
number INTEGER, 
buildingid INTEGER REFERENCES buildings(id), 
seating INTEGER
);
