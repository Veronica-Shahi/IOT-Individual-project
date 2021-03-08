create database topic1

create table departments(
	dept_no int identity,
	department_name varchar(50),
	location varchar(50),
	constraint dpk primary key(dept_no)

)

create table workers(
	emp_no int not null identity,
	first_name varchar(50),
	last_name varchar(50),
	job_title varchar(50),
	age int,
	dept_no int,
	constraint wpk primary key(emp_no),
	constraint dfk foreign key(dept_no) references departments
 )
 
select department_name, count(w.dept_no) 'no of workers'from workers as w, departments as d
 where w.dept_no=d.dept_no group by d.department_name



 insert into departments values('packing','cairo')
 insert into departments values('accounts','lagos')
 insert into departments values('human resource','london')

 insert into workers values('lawrence','surani','manager','56',1)
 insert into workers values('jason','argo','manager','33',2)
 insert into workers values('emily','villa','manager','32',3)
 insert into workers values('ahmed','mukani','packer','23',1)
 insert into workers values('joe','todj','packer','24',1)
 insert into workers values('hattie','smith','accountant','56',2)
 insert into workers values('sally','boorman','admin assistant','34',3)
 