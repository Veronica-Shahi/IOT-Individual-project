create table customers(
	cid int not null,
	cname varchar(30),
	dob date,
	caddress varchar(40),
	primary key (cid)
)


create table products
(
	pid int not null,
	pname varchar(40),
	pprice int,
	available varchar(30),
	primary key (pid)
)

create table sales 
(
	pid int not null,
	cid int not null,
	foreign key (pid) REFERENCES products (pid),
	foreign key (cid) REFERENCES customers (cid)
)

