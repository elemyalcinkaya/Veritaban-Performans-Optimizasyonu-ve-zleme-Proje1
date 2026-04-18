USE UniversityCourseTrackingDB;
GO

INSERT INTO Departments (DepartmentName, FacultyName)
VALUES
('Computer Engineering', 'Engineering'),
('Industrial Engineering', 'Engineering'),
('Business Administration', 'Economics and Administrative Sciences'),
('Psychology', 'Health Sciences');
GO

INSERT INTO Instructors (FirstName, LastName, Title, DepartmentID, Email)
VALUES
('Ahmet', 'Yilmaz', 'Prof. Dr.', 1, 'ahmet.yilmaz@uni.edu'),
('Ayse', 'Demir', 'Doç. Dr.', 1, 'ayse.demir@uni.edu'),
('Mehmet', 'Kara', 'Dr. Öðr. Üyesi', 2, 'mehmet.kara@uni.edu'),
('Elif', 'Aydin', 'Prof. Dr.', 3, 'elif.aydin@uni.edu'),
('Seda', 'Polat', 'Dr. Öðr. Üyesi', 4, 'seda.polat@uni.edu');
GO

INSERT INTO Courses (CourseCode, CourseName, Credit, DepartmentID, InstructorID, Semester)
VALUES
('CENG101', 'Introduction to Programming', 4, 1, 1, 'Fall'),
('CENG202', 'Database Systems', 4, 1, 2, 'Spring'),
('IE201', 'Operations Research', 3, 2, 3, 'Fall'),
('BA101', 'Principles of Management', 3, 3, 4, 'Fall'),
('PSY110', 'Introduction to Psychology', 3, 4, 5, 'Spring');
GO

INSERT INTO Students (StudentNumber, FirstName, LastName, Gender, BirthDate, DepartmentID, EnrollmentYear, Email)
VALUES
('2023001', 'Ali', 'Can', 'M', '2004-03-15', 1, 2023, 'ali.can@ogr.uni.edu'),
('2023002', 'Zeynep', 'Kaya', 'F', '2004-07-21', 1, 2023, 'zeynep.kaya@ogr.uni.edu'),
('2022003', 'Mert', 'Aslan', 'M', '2003-01-11', 2, 2022, 'mert.aslan@ogr.uni.edu'),
('2021004', 'Ece', 'Yildiz', 'F', '2002-12-09', 3, 2021, 'ece.yildiz@ogr.uni.edu'),
('2023005', 'Deniz', 'Akin', 'F', '2004-06-01', 4, 2023, 'deniz.akin@ogr.uni.edu');
GO

INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate, Status)
VALUES
(1, 1, '2024-09-20', 'Active'),
(1, 2, '2025-02-12', 'Active'),
(2, 1, '2024-09-22', 'Completed'),
(2, 2, '2025-02-11', 'Active'),
(3, 3, '2024-09-19', 'Active'),
(4, 4, '2024-09-18', 'Completed'),
(5, 5, '2025-02-13', 'Active');
GO

INSERT INTO Exams (EnrollmentID, ExamType, ExamDate, Score)
VALUES
(1, 'Midterm', '2024-11-10', 72),
(1, 'Final', '2025-01-10', 81),
(2, 'Quiz', '2025-03-10', 65),
(3, 'Midterm', '2024-11-12', 88),
(4, 'Quiz', '2025-03-11', 91),
(5, 'Midterm', '2024-11-15', 76),
(6, 'Final', '2025-01-15', 84),
(7, 'Quiz', '2025-03-12', 79);
GO