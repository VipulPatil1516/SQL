drop table product

CREATE TABLE product(
prod_ID varchar(10) primary key,
prod_Name char(20) not null,
Description varchar(30),
price money,
Qty int


)

select * from product

insert into product values('P0001','Laptop','Dell 8GB 1TB SSD', 85000.00,50)

insert into product values('P0002','Mouse',' ', 200,20)

insert into product values('P0003','Mouse','HP MOUSE',450.50 ,50)


