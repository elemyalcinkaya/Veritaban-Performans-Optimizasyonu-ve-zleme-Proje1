USE UniversityCourseTrackingDB;
GO

CREATE ROLE student_reader;
CREATE ROLE department_staff;
GO

GRANT SELECT ON Students TO student_reader;
GRANT SELECT ON Courses TO student_reader;
GRANT SELECT ON Enrollments TO student_reader;
GO

GRANT SELECT, INSERT, UPDATE ON Students TO department_staff;
GRANT SELECT, INSERT, UPDATE ON Enrollments TO department_staff;
GRANT SELECT ON Courses TO department_staff;
GO