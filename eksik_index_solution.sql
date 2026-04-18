CREATE NONCLUSTERED INDEX IX_Exams_EnrollmentID_Score
ON Exams (EnrollmentID, Score)
INCLUDE (ExamType);
GO