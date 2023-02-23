SELECT * FROM face_recognition.regteach;
show databases;
use face_recognition;
drop table regteach;
show databases;
use face_recognition;
create table regteach(
fname varchar(20),
lname varchar(20),
cnum int,
email varchar(50),
ssq varchar(30),
sa varchar(20),
pwd int
);
select * from regteach;
insert into regteach values('sopnil','islam','12223','sopnil@gmail.com','ssddd','ssdd','123');

