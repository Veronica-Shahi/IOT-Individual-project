create table bulk_table
(
	name varchar(30) not null,
	age int  not null,
	address varchar(40) not null,
)

bulk insert bulk_table from'C:\Users\Hemraj Shahi\Documents\mydata.csv' 
with(

	fieldterminator=',',
	rowterminator='\n'
)