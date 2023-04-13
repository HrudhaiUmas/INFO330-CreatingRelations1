CREATE TABLE IF NOT EXISTS schedule (
  coursecode VARCHAR(40),
  roomid  INTEGER REFERENCES rooms(id), 
  timeslotid INTEGER REFERENCES timeslots(id), 
  UNIQUE(roomid, timeslotid)
);

INSERT INTO schedule VALUES ('ABC1', (SELECT id FROM rooms  WHERE number = 400), (SELECT id FROM timeslots WHERE starttime = '09:00') );