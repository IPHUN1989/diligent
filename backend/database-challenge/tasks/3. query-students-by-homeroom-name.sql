SELECT student.name AS StudentName, homeroom.name AS HomeroomName
FROM student
JOIN homeroom ON student.homeroomID = homeroom.homeroomID
WHERE homeroom.name = '9A';