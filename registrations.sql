CREATE TABLE IF NOT EXISTS student_courses(
studentid INTEGER REFERENCES students(id), 
course VARCHAR(40) REFERENCES courses(code), 
grade FLOAT DEFAULT NULL
);

INSERT INTO student_courses (studentid, course) VALUES
(1, 'INFO330A'), (1, 'INFO448A'), (1, 'INFO314'),
(3, 'INFO330A'), (3, 'INFO449A'),
(2, 'BAW0100'), (2, 'BAW100A'),
(4, 'BAW0100');
