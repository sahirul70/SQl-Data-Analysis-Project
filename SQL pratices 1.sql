show databases;
use face_recognition;
create table student(
Student_ID int,
Name varchar(40),
Department varchar(20),
Course varchar(20),
Year varchar(20),
Semester varchar(20),
Division varchar(20),
Gender varchar(20),
DOB datetime,
Mobile_No int,
Address varchar(20),
Roll_No int,
Email varchar(40),
Teacher_Name varchar(20),
PhotoSample varbinary(20)
);
drop table student;
select * from student;
insert into student values('1','sopnil','cse','Dataseience','2021-22','1st','morning','male','1997-05-1','01788265670','dhaka','001','sopnil@gmail.com','islam','');

select * from face_recognition.regteach;
insert into regteach values('sopnil','islam','12223','sopnil@gmail.com','ssddd','ssdd','123');
insert into stdattendance values('1','12220','sopnil','2.20','2022-2-1','present');


