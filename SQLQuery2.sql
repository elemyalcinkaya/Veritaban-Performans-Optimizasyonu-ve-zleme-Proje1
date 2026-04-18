USE UniversityCourseTrackingDB;
GO

SET NOCOUNT ON;

DECLARE @i INT = 6;

WHILE @i <= 2000
BEGIN
    INSERT INTO Students (
        StudentNumber,
        FirstName,
        LastName,
        Gender,
        BirthDate,
        DepartmentID,
        EnrollmentYear,
        Email
    )
    VALUES (
        '20' + RIGHT('00000' + CAST(@i AS NVARCHAR(10)), 5),
        'StudentName' + CAST(@i AS NVARCHAR(10)),
        'StudentSurname' + CAST(@i AS NVARCHAR(10)),
        CASE WHEN @i % 2 = 0 THEN 'M' ELSE 'F' END,
        DATEADD(DAY, -(@i * 30), '2005-01-01'),
        ((@i - 1) % 4) + 1,
        2021 + (@i % 4),
        'student' + CAST(@i AS NVARCHAR(10)) + '@ogr.uni.edu'
    );

    SET @i = @i + 1;
END
GO

SET NOCOUNT ON;

DECLARE @studentID INT = 1;
DECLARE @courseCount INT = (SELECT COUNT(*) FROM Courses);

WHILE @studentID <= 2000
BEGIN
    INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate, Status)
    VALUES
    (@studentID, ((@studentID - 1) % @courseCount) + 1, DATEADD(DAY, -(@studentID % 365), GETDATE()), 'Active'),
    (@studentID, ((@studentID) % @courseCount) + 1, DATEADD(DAY, -((@studentID + 10) % 365), GETDATE()), 'Completed');

    SET @studentID = @studentID + 1;
END
GO

SET NOCOUNT ON;

DECLARE @maxEnrollmentID INT = (SELECT MAX(EnrollmentID) FROM Enrollments);
DECLARE @enrollID INT = 1;

WHILE @enrollID <= @maxEnrollmentID
BEGIN
    INSERT INTO Exams (EnrollmentID, ExamType, ExamDate, Score)
    VALUES
    (@enrollID, 'Midterm', DATEADD(DAY, -10, GETDATE()), RAND(CHECKSUM(NEWID())) * 40 + 60),
    (@enrollID, 'Final', GETDATE(), RAND(CHECKSUM(NEWID())) * 40 + 60);

    SET @enrollID = @enrollID + 1;
END
GO