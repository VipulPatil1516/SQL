create table teachers
(
  teacher_id int identity(100,10) not null primary key,
  teacher_name varchar(50) not null,
  course_name varchar(50) not null,
  qualification varchar (30) not null,
  salary money constraint ck_teachers_salary check(salary >35000 and salary<80000)
  );
  drop table teachers
  select * from teachers
  insert into teachers values('Gagandep','python','BE', 40000) 
  insert into teachers values('vinayak','java','BE', 50000)
  insert into teachers values('mukul','C++','BSE', 70000)
  insert into teachers values('jagesh','C','BCOM', 50000)
  insert into teachers values('pankaj','qa','BE', 40500)

  
  drop table students
  create table students
  (
  student_id int identity(10,10) primary key,
  student_name varchar(50) not null,
  fee money check( fee > 0) ,
  student_course varchar(30) not null,
  teacher_id int,
  DOB date
  constraint fk_student_teacher foreign key(teacher_id)
  references teachers(teacher_id)
  on delete cascade
  );

  select * from students
  select * from teachers

  insert into students
  values('vip', 4000,'java',100,convert(datetime,'12-dec-2000'))

  insert into students
  values('no',3000,'sql',110,convert(datetime,'14-dec-2000'))

  insert into students
  values('yes', 6000,'C++',120,convert(datetime,'16-dec-2000'))

  insert into students
  values('ok', 1000,'c',130,convert(datetime,'18-dec-2000'))

  insert into students
  values('vin', 3500,'python',140,convert(datetime,'22-dec-2000'))