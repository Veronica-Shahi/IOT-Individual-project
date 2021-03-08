create table tbl_student
(
  id int not null,
  name varchar (30)not null,
  age int,
  address varchar(30) null
  
)
insert into tbl_student(id,name, age, address)
values( 1, 'vero', 30, 'thimi')
insert into tbl_student 
values( 2, 'ram', 31, 'bkt')
insert into tbl_student 
values( 3, 'sam', 38, 'pkt')

select * from tbl_student where address= 'thimi'
select * from tbl_student where age<40



select count(address) from tbl_student
select count(age) from tbl_student where age<35
select sum (age) from tbl_student
select min(age) from tbl_student
select max(age) from tbl_student
select avg(age) from tbl_student