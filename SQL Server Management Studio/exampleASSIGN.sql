create table customer
(	
	Cno varchar (10) not null,
	Cname varchar(60),
	primary key (Cno),

)
insert into customer
values('C201','travel association of great britain')
insert into customer
values('C112','hellinic philately society og great britain')
insert into customer
values('C300','edgar jones plumbing supplies')
insert into customer
values('C302','magic software')

create table exhibition_type
(

	typeID int not null,
	type varchar (30),
	primary key (typeID),
)
INSERT INTO exhibition_type
values(1, 'trade exhibition')
INSERT INTO exhibition_type
values(2, 'stamp exhibition')
INSERT INTO exhibition_type
values(3, 'education exhibition')

create table location
(
	locationID int not null,
	address varchar(100),
	primary key (locationID)
)

INSERT INTO location
values(1,'olympia london,hammersmith road,kensington,london W14 8UX')
INSERT INTO location
values(2,'islington arts factory,2 parkhurst Rd, london  N7 OSF')
INSERT INTO location
values(3,'weetwood hall leeds hotel and conference center, otley Rd, leeds LS16 5PS')
INSERT INTO location
values(4,'St austell conference center, st austell business park, saint austell PL25 4EJ')
INSERT INTO location
values(5,'excel london, one western gateway, royal victoria dock london E16 1XL')

CREATE TABLE exhibition
(
	exh_ID varchar(10) not null,
	exh_name varchar(30),
	Sdate date,
	Edate date,
	Cno varchar(10),
	typeID int,
	locationID INT,
	primary key (exh_ID),
	foreign key (typeID) references exhibition_type,
	foreign key (locationID) references location,
	foreign key (Cno) references customer

	
)

insert into exhibition (exh_ID,exh_name,Sdate,Edate,Cno,typeID,locationID)
values('E111','Ideal Holiday Exhibition','01-JUN2017', ' 05-JUN2017 ','C201',1,1)
insert into exhibition (exh_ID,exh_name,Sdate,Edate,Cno,,locationID)
values('E115 ','Stampex','27-JUN2017',  '28-JUN2017' ,'C112',2,2)
insert into exhibition (exh_ID,exh_name,Sdate,Cno,typeID,locationID)
values('E119','Visit Britain! (Yorkshire) ','29JULY2017 ','C201',1,3)
insert into exhibition(exh_ID,exh_name,Sdate,Cno,typeID,locationID)
values('E120','Visit Britain! (Cornwall) ','1AUG2017 ','C201',1,4)
insert into exhibition(exh_ID,exh_name,Sdate,Edate,Cno,typeID,locationID)
values('E122','Plumbing UK 2017 ','1AUG2017','3AUG2017 ','C300',1,1)
insert into exhibition(exh_ID,exh_name,Sdate,Cno,typeID,locationID)
values('E145','New Horizons in Education ','7AUG2017 ','C302',3,5)



select * from exhibition








create table staff_role
(	
	roleID int not null,
	role varchar (40),
	primary key(roleID)
)

INSERT INTO staff_role
values(1,'Stand Fitter')
INSERT INTO staff_role
values(2,'Software Support')
INSERT INTO staff_role
values(3,'Exhibition Assistant')
INSERT INTO staff_role
values(4,'Project Manager')
INSERT INTO staff_role
values(5,'Installation Designer')

create table staff
(	
	staffID varchar(10) not null,
	fName varchar (20),
	mName varchar(20),
	lName varchar(20),
	roleID int,
	primary key (staffID),
	foreign key (roleID) references staff_role

)
insert into staff
values('S102','larry','','howard',1)
insert into staff
values('S105','nathan','','banes',2)
insert into staff
values('S204','sharon','','smith',2)
insert into staff
values('S333','fatin','','koury',1)
insert into staff
values('S405','sahib','badri','atiyeh',3)
insert into staff
values('S431','diana','','west',3)
insert into staff
values('S567','ellen','','levelby',4)
insert into staff
values('S601','pauline','','west',5)
insert into staff
values('S602','sandy','','niles',1)

create table installation
(
	installID int not null,
	installType varchar (30),
	installDes varchar(200),
	primary key (installID)

)
insert into installation
values(1,'Slide Show ','Computer, projection screen and projector stand for projected slide show of holiday destination of travel destinations around Britain. ')
insert into installation
values(2,'Stand ','Standard exhibition stand  ')
insert into installation
values(3,'Interactive Search Application  ','Standard exhibition stand with computer terminal. ')

create table software
(
	softID int not null,
	softType varchar (40),
	softDes varchar(200),
	primary key (softID)

)
insert into software
values(1,'Interactive Search Application ','PHP front end / HTML website with back end MySQL database. Data containing details of holiday destinations in Britain. Data to be provided by customer (Travel Association of Great Britiain) ')
insert into software
values(2,'Slide Show ','power point')

create table soft_exhi
(
	exh_ID varchar(10),
	softID int,
	foreign key (exh_ID) references exhibition,
	foreign key(softID) references software 

)	

insert into soft_exhi
values('E111',1)
insert into soft_exhi
values('E111',2)

select * from soft_exhi
select * from software
select * from exhibition
	
create table inst_exhi

(
	
	exh_ID varchar(10),
	installID int,
	
	foreign key(exh_ID) references exhibition,
	foreign key (installID) references installation
	

)

insert into inst_exhi
values ('E111',1)
insert into inst_exhi
values ('E111', 2)
insert into inst_exhi
values ('E111', 3)










