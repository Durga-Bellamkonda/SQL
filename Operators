create database Student_DB;
use Student_DB;
create table student(
Enrollment_NO int primary key,
Name varchar(50),
Class int,
Section text,
Science_Marks int
);

select * from student;

SELECT DISTINCT Section FROM student;

SELECT * FROM student
ORDER BY Science_Marks DESC
LIMIT 5;

SELECT Class, COUNT(*) AS NumberOfStudents
FROM student
GROUP BY Class;

SELECT Section, AVG(Science_Marks) AS AverageMarks
FROM student
GROUP BY Section;

SELECT Name, Science_Marks
FROM student
ORDER BY Enrollment_NO DESC;

SELECT Name FROM student
WHERE Science_Marks > 60;

