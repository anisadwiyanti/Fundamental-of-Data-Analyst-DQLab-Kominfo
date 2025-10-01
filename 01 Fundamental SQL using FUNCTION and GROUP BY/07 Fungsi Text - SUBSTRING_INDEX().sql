SELECT StudentID, SUBSTRING_INDEX(Email, '@', 1) as Name
FROM students;