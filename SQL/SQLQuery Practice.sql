create database Practice

use Practice

create table teacher
(
teacher_id int identity(100,10) primary key,
teacher_name varchar(50) not null,
coursename varchar(50) not null,
qualification varchar(30),
salary money constraint ck_teacher_salary check(salary >35000 and salary < 80000)
);

select * from teacher

insert into teacher values('Vipul','Python','B.E',40000)

insert into teacher values('Niru','C+','BSE',45050)

insert into teacher values('Gagan','C','B.E',40010)

insert into teacher values('Mukul','Java','B.A',50000)

create table student
(
student_id int Identity(10,10) primary key,
student_name varchar (50) not null,
course_name varchar(30) not null,
teacher_id int,
fee money check (fee > 0),
DoB date,
constraint fk_student_teacher foreign key(teacher_id)
references teacher(teacher_id)
on delete cascade
);
drop table student

select * from student

insert into student
values('abc','python',110,5000,convert(Datetime,'15-Dec-2020'))

insert into student
values('bvc','java',120,5000,convert(Datetime,'17-Dec-2020'))

insert into student
values('sdf','c',130,4000,convert(Datetime,'18-Dec-2020'))

insert into student
values('qwe','c+',140,6000,convert(Datetime,'20-Dec-2020'))



alter table student
add column phonenumber;