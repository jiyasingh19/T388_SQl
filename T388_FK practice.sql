create database T388_FK;
use T388_FK;
create table students
(ID int primary key auto_increment,
name varchar(50) );
insert into students values
(1,"Kunal");
select * from students;
insert into students(name) values
("suman");
create table INFO
(ID int,
score int,
foreign key (id) references students (id));
insert into INFO values
(1,300),(2,300);
select * from INFO;
