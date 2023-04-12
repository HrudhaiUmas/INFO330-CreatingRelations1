CREATE TABLE IF NOT EXISTS schedule (
  coursecode VARCHAR(40),
  roomid  INTEGER REFERENCES rooms(id), 
  timeslotid INTEGER REFERENCES timeslots(id), 
  UNIQUE(roomid, timeslotid)
);