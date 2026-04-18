SET STATISTICS IO ON;
SET STATISTICS TIME ON;
GO
SELECT 
    d.DepartmentName,
    c.CourseName,
    COUNT(e.EnrollmentID) AS TotalEnrollments,
    AVG(ex.Score) AS AverageScore
FROM Departments d
INNER JOIN Students s ON d.DepartmentID = s.DepartmentID
INNER JOIN Enrollments e ON s.StudentID = e.StudentID
INNER JOIN Courses c ON e.CourseID = c.CourseID
INNER JOIN Exams ex ON e.EnrollmentID = ex.EnrollmentID
WHERE ex.ExamType = 'Final'
GROUP BY d.DepartmentName, c.CourseName
ORDER BY AverageScore DESC;