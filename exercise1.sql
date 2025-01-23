create database XYZ_Institute;

use XYZ_Institute;

create table mechanical_Dept 
(student_id int primary key,
student_name varchar(50),
sex char(1) , 
phone_no int ,
date_of_birth date ,
department varchar(50),
address text);
-- 1. 
show databases;
show tables;
describe mechanical_Dept;
explain mechanical_Dept;

-- 2. Add COlumn roll no and marks 
alter table mechanical_dept add column roll_no int;
alter table mechanical_dept add column marks int;
explain mechanical_Dept;

-- 3 entries-5
insert into mechanical_dept (student_id,roll_no,student_name,sex,marks,date_of_birth,department,phone_no,address) 
values
(101,1,"Ravi","M",60,"1998-05-05","mech",9876543210,"DELHI"),
(102,2,"Raveena","F",100,"1998-06-05","mech",9876543210,"DELHI"),
(103,3,"Ritu","F",80,"1998-07-05","mech",9876543210,"DELHI"),
(104,4,"Ram","M",100,"1998-08-05","mech",9876543210,"DELHI"),
(105,5,"Abhishek","M",10,"1998-09-05","mech",9876543210,"DELHI");

-- 4 Delete column phone number
alter table mechanical_dept drop column phone_no;

select * from mechanical_dept;

--   adding 10 marks where roll no = 1
update mechanical_dept set marks = marks+10 where roll_no=1 and address="DELHI";
 
-- Modify existing column with new data type.
alter table mechanical_dept modify phone_no char(10);

-- Delete any one tuples from anytable
delete from mechanical_dept where marks < 85;

select * from mechanical_dept;
drop table mechanical_Dept;

--  getting name and age
select student_name , date_of_birth from mechanical_Dept;

