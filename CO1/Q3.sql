create database emp;
use emp;
create table employee(
Empno varchar(5) not null,
Emp_name varchar(20) not null,
dept varchar(30) not null,
salary int not null,
dob date not null,
branch varchar(30) not null
);
insert into employee(Empno,Emp_name,dept,salary,dob,branch)values("E101","Amit","production",45000,"2000-03-12","Banglore");
insert into employee(Empno,Emp_name,dept,salary,dob,branch)values("E102","Amit","HR",70000,"2002-07-03","Banglore");
insert into employee(Empno,Emp_name,dept,salary,dob,branch)values("E103","Sunita","Manager",120000,"2001-01-11","Mysore");
insert into employee(Empno,Emp_name,dept,salary,dob,branch)values("E105","Sunita","IT",67000,"2001-08-01","Mysore");
insert into employee(Empno,Emp_name,dept,salary,dob,branch)values("E106","Mahesh","Civil",145000,"2003-09-20","Mumbai");
select * from employee;
select Empno,salary from employee;
select avg(salary) from employee;
select count(*) from employee;
select count( distinct Emp_name) from employee;
select sum(salary),Emp_name,count(*) as occurence from employee group by Emp_name;
select salary from employee where salary>120000;
select distinct Emp_name from employee 
order by Emp_name desc;
select * from employee where Emp_name="Amit" and salary>50000;