-- Create subject table;
CREATE TABLE subject (
  subjectID SERIAL PRIMARY KEY,
  Name VARCHAR(100) UNIQUE
);

-- Insert values into the subjects;
INSERT INTO subject (Name) VALUES ('Algebra');
INSERT INTO subject (Name) VALUES ('Biology');
INSERT INTO subject (Name) VALUES ('World History');



-- Create student subject join table;
CREATE TABLE student_subject (
  studentID INT,
  subjectID INT,
  Grade INT,
  PRIMARY KEY (studentID, subjectID) UNIQUE,
  FOREIGN KEY (studentID) REFERENCES student(studentID),
  FOREIGN KEY (subjectID) REFERENCES subject(subjectID)
);


-- Insert values into the subjects;
INSERT INTO student_subject (studentID, subjectID, Grade) VALUES (1, 1, 3);
INSERT INTO student_subject (studentID, subjectID, Grade) VALUES (1, 2, 2);
INSERT INTO student_subject (studentID, subjectID, Grade) VALUES (1, 3, 5);
INSERT INTO student_subject (studentID, subjectID, Grade) VALUES (2, 1, 4);
INSERT INTO student_subject (studentID, subjectID, Grade) VALUES (2, 2, 3);
INSERT INTO student_subject (studentID, subjectID, Grade) VALUES (2, 3, 2);
INSERT INTO student_subject (studentID, subjectID, Grade) VALUES (3, 1, 5);
INSERT INTO student_subject (studentID, subjectID, Grade) VALUES (3, 2, 4);
INSERT INTO student_subject (studentID, subjectID, Grade) VALUES (3, 3, 3);
