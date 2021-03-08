insert into customers values (1,'ram','2015-1-11','thimi');
insert into customers values (2,'sita','2015-1-12','pipal bot');
insert into customers values (3,'ram','2015-3-12','pepsi');

insert into products values (1,'shampoo','400','yes');
insert into products values (2,'cream','500','yes');
insert into products values (3,'shoe','600','yes');

insert into sales values (1,1);
insert into sales values (2,3);
insert into sales values (3,2);

select cname,pname from customers, products,sales where sales.pid=products.pid and sales.cid=customers.cid
select cname, pname from customers, products, sales where cname='ram' and sales.pid=products.pid and sales.cid=customers.cid 

select cid, count(*) from sales where sales.cid=1 and sales.cid=1 group by sales.cid
select pname,cname, count(c.cname) from customers as c, products as p, sales as s where cname='ram' and pname='shampoo'and c.cid=s.cid and s.pid=p.pid
group by c.cname,p.pname
order by c.cname,p.pname

select count(pid)'no of products' from products  where available='yes'
select pname, count(sales_id) as Result from customers, products, sales 
where sales.pid = products.pid group by products.pname
