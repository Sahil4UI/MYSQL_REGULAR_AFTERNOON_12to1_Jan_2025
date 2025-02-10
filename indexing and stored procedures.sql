-- indexing , stored procedure 


create database demo1;
use demo1;

create table department (
deptId int primary key,
deptName varchar(100)
);

create table EMployee
(
	empId int primary key,
    empName varchar(100),
    deptId int,
    salary decimal(10,2),
    foreign key (deptId) references department (deptID)
    );
    
create table project
( projectID int primary key,
projectName varchar(100),
deptID int,
foreign key (DeptID) references Department(DeptID)
);

insert into department(deptId,DeptName)
values
(1,"HR"),
(2,"IT"),
(3,"Sales"),
(4,"Finance");

insert into employee(empId,empName,DeptId,salary)
values
(1,"Alice",1,50000),
(2,"Bob",2,60000),
(3,"Charlie",3,55000),
(4,"David",2,70000),
(5,"Eve",4,65000);

insert into project (projectId,projectName,DeptID)
values
(1,"Project X",2),
(2,"Project X",1),
(3,"Project X",3);

-- INDEXING 
create index myIndex on employee(EmpName);

select * from employee where empName = "Alice";
-- Stored Procedure - Functions

DELIMITER $$
CREATE PROCEDURE 
GetEmployeeByDepartment (IN DeptName varchar(100) )
BEGIN
 select e.empId,e.EmpName,e.salary,d.deptName
 from Employee as e
 inner join department as d on e.deptID = d.deptId
 where d.deptName=DeptName;
END $$
DELIMITER ;



CALL GetEmployeeByDepartment("Finance");
 
 
