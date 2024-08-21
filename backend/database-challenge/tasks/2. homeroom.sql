-- INIT database
CREATE TABLE homeroom (
  homeroomID SERIAL PRIMARY KEY,
  Name VARCHAR(100) UNIQUE
);

INSERT INTO homeroom(Name) VALUES ('9A');
INSERT INTO homeroom(Name) VALUES ('9B');

-- create index
CREATE INDEX homeroom_index
ON homeroom(name);

-- Alter student table
ALTER TABLE student
ADD COLUMN homeroomID INT,
ADD CONSTRAINT fk_homeroom
FOREIGN KEY (homeroomID) REFERENCES homeroom(homeroomID);

-- QUERY database
UPDATE student SET homeroomID = 1 WHERE name = 'John'; 
UPDATE student SET homeroomID = 1 WHERE name = 'Adam';
UPDATE student SET homeroomID = 2 WHERE name = 'Lucy'; 

-- Alter student table homeroomID
ALTER TABLE student
ALTER COLUMN homeroomID SET NOT NULL;

-- Test 
SELECT * FROM student;