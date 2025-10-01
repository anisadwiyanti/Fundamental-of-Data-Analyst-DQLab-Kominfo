SELECT StudentID, Email, REPLACE(Email, 'yahoo', 'gmail') as NewEmail
FROM students;