SET STATISTICS IO ON;
SET STATISTICS TIME ON;
GO
SELECT 
    s.StudentNumber,
    s.FirstName,
    s.LastName,
    c.CourseCode,
    c.CourseName,
    e.Status,
    ex.ExamType,
    ex.Score
FROM Students s
INNER JOIN Enrollments e ON s.StudentID = e.StudentID
INNER JOIN Courses c ON e.CourseID = c.CourseID
INNER JOIN Exams ex ON e.EnrollmentID = ex.EnrollmentID
WHERE s.DepartmentID = 1
  AND ex.Score >= 70
ORDER BY ex.Score DESC;