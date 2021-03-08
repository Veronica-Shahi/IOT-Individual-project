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
	RC varchar (10) not null,
	R varchar (10) not null,
	 primary key (RC) 
)
create table module_student_result
(
	Mcode varchar (20) not null,
	Sid int not null,
	Gp int,
	RC varchar (10),
	foreign key (Mcode) references module(Mcode),
	foreign key (Sid) references student(Sid),
	foreign key (RC) references Result(Rc),

)
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