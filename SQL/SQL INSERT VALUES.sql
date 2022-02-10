drop table ss
create table ss(
ss_id varchar(10) primary key,
ss_name varchar(20) not null,
description varchar(30),
price money,
qty int
)

select * from ss

insert into ss values(100,'Vipul','8 gb',1000,20)

insert into ss values(101,'Vinayak','6 gb',1850,15)

insert into ss values(102,'Vip','2 gb',1000, 12)

insert into ss values(103,'Vin','3 gb',800,7)