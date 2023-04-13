CREATE TABLE IF NOT EXISTS student_courses(
studentid INTEGER REFERENCES students(id), 
course VARCHAR(40) REFERENCES courses(code), 
grade FLOAT DEFAULT NULL
);

INSERT INTO student_courses (studentid, course, grade) VALUES
(1, 'INFO330A', 4.0), (1, 'INFO448A', 3.6), (1, 'INFO314', 2.4),
(3, 'INFO330A', 3.3), (3, 'INFO449A', 3.4),
(2, 'BAW0100', 2.6), (2, 'BAW100A', 4.0),
(4, 'BAW0100', 3.4);