
create database hospital;


create table Hospital_Dept
(
Dept_id int Primary Key,
Dept_name Varchar(50),
)
select* from Hospital_Dept



Create table Doctor
(
Doctor_Id int Identity(10,10) primary key,
Doctor_Name VARCHAR(40) Not null,
Doctor_spcl VARCHAR(40) Not null,
Salary money ,
Dept_id int constraint fk_doctor_id foreign key(Dept_id)
references Hospital_Dept(Dept_id)
On delete cascade
)


drop table doctor

