SELECT s.Name AS SubjectName, AVG(grades.Grade) AS AverageGrade
FROM student_subject grades
JOIN subject s ON grades.subjectID = s.subjectID
WHERE s.Name = 'Algebra'
GROUP BY s.Name;