 create table emp1(
emp_id Number(2),
emp_Name Varchar2(10),
emp_Basic Number(6,2),
emp_Designation Varchar2(10),
emp_Age Number(2)
);
  alter table emp1
modify emp_Basic int;
alter table emp1
modify emp_name Varchar2(15);
 create table emp_trainee(
emp_id Number(2),
emp_Name Varchar2(15),
emp_Basic Number(38),
emp_Designation Varchar2(10),
emp_Age Number(2)
);
alter table emp1
rename column emp_ID to ID;
insert into emp1 values(3,'Payal',6300,'Engineer',25);
insert into emp1 values(1,'Rohit',6700,'Manager',24);
insert into emp1 values(2,'Sunil',6200,'Engineer',27);
insert into emp1 values(4,'Kunal',6700,'Trainee',28);
insert into emp1 values(4,'Sunita',6230,'Trainee',26);
insert into emp1 values(6,'Bimal',7000,'Trainee',25);
 drop table Emp_trainee;
  create table Emp_trainee as select * from emp1 where emp_designation = 'Trainee';
   update emp1
   set skills = 'cybercell'
   where id=1;
update emp1
   set skills = 'AI'
   where id=2;
 update emp1
      set skills = 'management'
       where id=3;
 update emp1
       set skills = 'cloud'
       where id=4;
  
update emp1
       set skills = 'presentation'
       where id=6;
        update emp1
  set emp_basic = 5500
  where id= 6;
   alter table emp1
  rename column EMP_AGE to Age_in_years;
  alter table emp_trainee
  drop column emp_age;
  
alter table emp1 rename to emp_Mgr_Engr;
 truncate table emp_Mgr_Engr;


