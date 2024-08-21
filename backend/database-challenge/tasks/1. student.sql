-- INIT database
CREATE TABLE student (
  studentID SERIAL PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(255)
);

INSERT INTO student(Name, Email) VALUES ('John', 'john@school.com');
INSERT INTO student(Name, Email) VALUES ('Adam', 'adam@school.com');
INSERT INTO student(Name, Email) VALUES ('Lucy', 'lucy@school.com');

-- QUERY database
SELECT * FROM student;