create table customer
(
	customerID int not null,
	firstname varchar(30),
	surname varchar(30),
	town varchar (30),
	loyalityCardNO int not null,
	primary key(customerID),
)

insert into customer
values(23,'Gemma', 'jones','Liverpool', 123498)
insert into customer
values(36,'john', 'cooper','Liverpool', 987543)
insert into customer
values(123,'kerry', 'malley','manchester', 456321)
insert into customer
values(125,'karim', 'salih','leeds', 675456)

create table storeBranch
(
	sbID varchar (20)not null,
	store_name varchar (30),
	store_town varchar(30),
	no_of_loyality_customers int not null,
	primary key (sbID)
)
insert into storeBranch
values('C13','flemingtons', 'croston', 31)
insert into storeBranch
values('C12','smyths', 'formby', 65)
insert into storeBranch
values('C11','levingtons', 'manchester', 123)
insert into storeBranch
values('C10','jones', 'leeds', 25)

create table customerstoreBranch
(
	customerID int not null,
	sbID varchar(20) not null

	 foreign key(customerID) references customer(customerID),
	 foreign key(sbID) references storeBranch(sbID)

)
insert into customerstoreBranch
values(123,'C13')
insert into customerstoreBranch
values(23,'C13')
insert into customerstoreBranch
values(125,'C12')
insert into customerstoreBranch
values(36,'C11')

select * from customer
 order by 'surname'

 select sbID,store_name,store_town from storeBranch where no_of_loyality_customers>=30S

 select c.customerID, firstname, surname,loyalityCardNo,s.sbID, store_name from customer as c, storeBranch as s , customerstoreBranch as cs where s.sbID='C13' and s.sbID=cs.sbID and c.customerID=cs.customerID
 

 