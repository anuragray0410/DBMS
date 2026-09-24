Create Database Anurag;
Use University;
Create Table emp1(
    emp_id NUMBER(5),
    emp_name VARCHAR2(50),
    emp_salary NUMBER(10,2),
    emp_dept VARCHAR2(20)
);
Select * from emp1;
DESC emp1;
CREATE TABLE STUDENT(
    Roll NUMBER(5),
    Name VARCHAR2(50),
    Age NUMBER(5),
    Course VARCHAR2(5),
    Math NUMBER(6,2),
    Physics NUMBER(6,2),
    computer NUMBER(6,2),
    Birthdate DATE
);
Create Table MSC as select * from STUDENT where 1=0;
DESC MSC;
Create Table MCA as select 
Roll,
Name,
Age,
Course,
Math,
Physics,
computer,
Birthdate
from STUDENT where 1=0;
DESC MCA;
Insert into STUDENT values(1,'John',20,'BSc',85.5,90.0,95.0,'2003-01-15');
Insert into STUDENT values(2,'Alice',22,'BSc',88.0,89.5,97.8,'2003-05-17');
Insert into STUDENT values(3,'Ben',18,'BTech',75.3,86.5,90.5,'2004-10-16');
Insert into STUDENT values(4,'Mary',22,'BSc',88.0,89.5,97.8,'2008-05-06');
Insert into STUDENT values(5,'Harry',20,'Btech',88.7,91.0,93.0,'2004-01-21');
Insert into STUDENT values(6,'Ash',20,'MSC',88.7,99.6,97.0,'2007-04-20');
Insert into STUDENT values(7,'Ben',18,'BTech',75.3,86.5,90.5,'2004-10-16');
Insert into STUDENT values(8,'Mary',22,'BSc',88.0,89.5,97.8,'2008-05-06');      
select * from STUDENT;
select * from STUDENT where Roll=5;
select Roll, Name, Age, Course, Math, Physics, computer, Birthdate from STUDENT;
select * from STUDENT where Course='BSc';
insert into MSC 
SELECT Roll, Name, Age, Course, Math, Physics, computer, Birthdate from STUDENT where Course='MSC';
Commit;
Insert into MCA
select * from STUDENT where Course='MCA';
Commit;
desc student;
desc msc;
select course, Roll, Name, Age, Math, Physics, computer, Birthdate from STUDENT;
update STUDENT set Math=95.0 where Roll=7;
commit;
update STUDENT set name='Benjamin' where Roll=4;
commit;
delete from STUDENT where Roll=2;
commit;
delete from STUDENT;
commit;






