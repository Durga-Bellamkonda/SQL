use university;
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    gender TEXT,
    major TEXT
);

INSERT INTO students (id, name, age, gender, major)
VALUES (101, 'Naresh', 28, 'Male', 'Commerce'),
(102, 'Mounika', 26, 'Female', 'Psychology'),
(103, 'Bhavana', 25, 'Female', 'Chemistry'),
(104, 'Sai', 22, 'Male', 'Commerce'),
(105,'Durga',21,'Female','Statistics');

select * from students;

INSERT INTO students (id, name, age, gender, major)
VALUES (1, 'John Smith', 22, 'Male', 'Computer Science');

SELECT name FROM students;
SELECT name, age FROM students WHERE gender = 'Female';


CREATE TABLE Courses(
 id INTEGER PRIMARY KEY,
 Name TEXT,
 description TEXT
 );
 
# DATABASE CREATION: -
#1.	Create a database ‘classroom’
drop database classroom;
CREATE DATABASE classroom;
use classroom;

#2.	Create a table named ‘science_class’ with the following properties
#a.	columns(enrollment_no int, name varchar, science_marks int)


       CREATE TABLE science_class(
       enrollment_no int,
       name varchar(20),
       science_marks int
       );
       
#  INSERTING & IMPORTING: -
       
INSERT INTO science_class(enrollment_no,name,science_marks)
VALUES(1,'popeye',33),
	  (2,'olive',54),
	  (3,'brutus',98);
select * from classroom.science_class;


#2.	import data from CSV file ‘student.csv’ attached in resources to science_class to insert data of the next 8 students

#1.	Retrieve all data from the table ‘Science_Class’


select * from science_class;

#2.	Retrieve the name of students who have scored more than 60 marks

select  name from science_class where science_marks > 60;

#3.	Retrieve all data of students who have scored more than 35 but less than 60 marks
Select * from science_class where science_marks > 35 and science_marks<60; 


#4.	Retrieve all other students i.e., who have scored less than or equal to 35 or more than or equal to 60.

Select * from science_class where science_marks <= 35 or science_marks >=60;

#UPDATING TABLES: -
#1.	update the marks of popeye to 45
SET SQL_SAFE_UPDATES = 1;
UPDATE Science_Class SET science_marks = 45 Where name = 'popeye' LIMIT 1;
#2.	delete the row containing details of the student named ‘robb’
SET SQL_SAFE_UPDATES = 1;
Delete from science_class where name = 'Robb' limit 1;


#3.	Rename column ‘name’ to ‘student_name’
ALTER TABLE Science_Class CHANGE COLUMN name student_name VARCHAR(25);


