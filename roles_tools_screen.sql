SELECT 
    s.StudentNumber,
    s.FirstName,
    c.CourseName,
    ex.Score
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
JOIN Exams ex ON e.EnrollmentID = ex.EnrollmentID
WHERE ex.Score >= 80;