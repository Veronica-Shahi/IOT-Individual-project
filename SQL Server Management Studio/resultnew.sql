create table course
(
	Ccode int not null,
	Cname varchar (30),
	primary key (Ccode)
)

create table student
(
	Sid int not null,
	Sname varchar (30),
	Ccode int not null,
	primary key (Sid),
	foreign key (Ccode) references course(Ccode) 
)
create table module
(
	Mcode varchar(20) not null,
	Mtitle varchar (30),
	NOC int,
	primary key (Mcode) 
)
create table Result
(
	Rno int not null,
	RC varchar (40) not null,
	R varchar (40) not null,
	 primary key (Rno) 
)
create table module_student_result
(
	Mcode varchar (20) not null,
	Sid int not null,
	Gp int,
	Rno int,
	foreign key (Mcode) references module(Mcode),
	foreign key (Sid) references student(Sid),
	foreign key (Rno) references Result(Rno),

)

insert into module_student_result(Mcode,Sid, Gp,Rno)
values('BUS119',1078652,10, 1)
insert into module_student_result(Mcode,Sid, Gp,Rno)
values('COM110',1078652,8, 2)
insert into module_student_result(Mcode,Sid, Gp,Rno)
values('COM112',1078652,3, 3)
insert into module_student_result(Mcode,Sid, Gp,Rno)
values('COM114',1078652,2, 4)
insert into module_student_result(Mcode,Sid, Gp,Rno)
values('COM118',1078652,9, 5)
insert into module_student_result(Mcode,Sid, Gp,Rno)
values('COM120',1078652,3, 6)
insert into module_student_result(Mcode,Sid, Gp,Rno)
values('COM122',1078652,7, 7)

insert into course 
values (105,'BA Business computing')
insert into student
values(1078652,'David Green', 105)
insert into module
values('BUS119','Business operation', 20)
insert into module
values('COM110','INTRODUCTION TO COMPUTING', 20)
insert into module
values('COM112','Application building', 20)
insert into module
values('COM114','software engineering', 20)
insert into module
values('COM118','computer law', 10)
insert into module
values('COM120','system analysis', 20)
insert into module
values('COM122','HCI',10)

insert into Result
values (1,'P','pass')
insert into Result
values (2,'P','pass')
insert into Result
values (3,'RE','refer exam')
insert into Result
values (4,'DC','defer classwork')
insert into Result
values (5,'P','pass')
insert into Result
values (6,'RCE','refer classwork and exam')
insert into Result
values (7,'P','pass')

select S.Sname,M.Mtitle,RE.R from student as S, module as M, Result as RE, module_student_result as MSR
where S.Sid=MSR.Sid and M.Mcode=MSR.Mcode and RE.Rno=MSR.Rno and RE.RC=MSR.Rno and S.Sname='David Green'

select * from course

select S.Sname,M.Mtitle,RE.R from student as S, module as M, Result as RE, module_student_result as MSR
where S.Sid=MSR.Sid and M.Mcode=MSR.Mcode and RE.Rno=MSR.Rno and RE.Rno=MSR.Rno and S.Sname='David Green'



select Sname, Cname from student, course where Sname='David Green' 

select Sname, Mtitle, Gp from student as S, module as M,module_student_result as MSR where S.Sid=MSR.Sid and M.Mcode=MSR.Mcode and Mtitle= 'software engineering' and Sname= 'David Green' 

select Mtitle, Gp, Sname from module as M, module_student_result as MSR, student as S where M.Mcode=MSR.Mcode and S.Sid=MSR.Sid and Sname= 'David Green'


select Gp, count (Gp)'total no of grades' from module_student_result
