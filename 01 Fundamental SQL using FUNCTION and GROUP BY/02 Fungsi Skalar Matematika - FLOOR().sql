SELECT studentID, firstName, LastName, FLOOR(Semester1) as Semester1, 
FLOOR(Semester2) as Semester2, MarkGrowth
FROM students;