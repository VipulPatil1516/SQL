 create table prod
 (
   prod_id int not null,
   prod_name varchar(20) not null
  )

  select * from prod

  --DDL Statements Create,Drop,Alter,Trancate

  --alter table (table name)
  --add (constraint name)constraint(column name)

  Alter table prod 
  add constraint pk_prod_id primary key(prod_id)

  insert into prod
  values(1001, 'laptop')

  insert into prod
  values(1001, 'Mouse')


  alter table prod
  drop constraint pk_prod_id

  drop table prod

  delete prod
  where prod_id=1001

  update prod
  set prod_id = 1003
  where prod_name='mouse';
  go
  select*from prod


--using alter we adding column
  alter table prod
  add price money default 100

  --alter table( table name) 
  --drop column (column name)
  --dropping table from prod table
  alter table prod
  drop column price

  insert into prod(prod_id,prod_name,price)
  values(1006,'Charger',100)

 insert into prod(prod_id,prod_name)
 values(1008,'Dell',5000)

 --using alter increasing size of existing column

 alter table prod
 alter column prod_name varchar(50)

 delete prod
 where prod_id=1006

 select*from prod

 --Select Statment DML

 --select(all) *> or respecting column name from table name
 
 select * from prod

 --where clause

 select prod_id,prod_name,price
 from prod
 where price= 0 ;


 -- not operator
 select prod_id,prod_name,price
 from prod
 where price <> 0 ;



 --And 

    left     AND     Right   Results
	 T                 T       T
	 T                 F        F
	 F                 T       F
	 F                 F       F


	 
 --NOt

    left     NOT     Right   Results
	 T                 T       T
	 T                 F        T
	 F                 T       T
	 F                 F       F



	 