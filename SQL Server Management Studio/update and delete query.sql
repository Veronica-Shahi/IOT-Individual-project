create table tbl_one
(	
	id int not null,
	name varchar(20),
	primary key (id)
)
insert into tbl_one
values(1,'ram')
insert into tbl_one
values(2,'shyam')

create table tbl_two
(
	id int not null,
	address varchar(30),
	ssid int not null,
	primary key (id),
	foreign key (ssid) references tbl_one(id)
)
insert into tbl_two
values(1,'dillibazar', 1)
insert into tbl_two
values(2,'pokhara', 2)


select * from tbl_two

update tbl_two set address='baneshwor'
where ssid in (select id from tbl_one where name='ram')

delete from tbl_two where ssid in(select id from tbl_one where name='shyam')