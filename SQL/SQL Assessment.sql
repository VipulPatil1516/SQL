create database customer

use customer

create table customers
(
  customers_id int identity(100,1) primary key,
  customers_title varchar(10) not null,
  customers_firstname varchar(50) not null,
  customers_lastname varchar(50) not null,
  customers_number varchar(15) not null,
  customers_adress varchar(50) not null,
  customers_postalcode varchar(10) not null,
  customers_city varchar(20) not null,
  customers_state varchar(20) not null,
  customers_Rating varchar(10) not null,
  customers_order_Ship_Place varchar(50) not null
  );
 
 drop table customers

 select * from customers

 insert into customers
 values(100,'Mr','Vipul','Patil',8999781680,'R k Nagar',416216,'Kolhapur','Maharastra',9,'Kagal')


 create table orders
(
orders_number varchar(20) primary key,
orders_QTY varchar(100) not null,
Datselect * from orderse_of_Order Date,
customers_id int,
constraint fk_customers_orders foreign key(customers_id)
references customers (customers_id)
on delete cascade
);

drop table orders



insert into orders 
values('P10001',25,convert(datetime,'12-dec-2008'))



create table stocks 
(
 Descriptions int,
 Catalogs money,
 Productno varchar(100) primary key,
 Qty varchar(100) not null,
 Cost smallmoney,
 Sellingprice smallmoney,
 orders_number varchar(20),
 constraint fk_orders_stocks foreign key(orders_number)
 references orders(orders_number)
 on delete cascade
 );

 select*from stocks
 
 drop table stocks

 insert into stocks
 values()

 

