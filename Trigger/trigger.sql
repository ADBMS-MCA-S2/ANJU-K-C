create database college_employee;
use colege_employee;
create table new_employee(emp_id int,emp_name char(20),emp_department varchar(20));
insert into new_employee values(100,'meera','mca');
insert into new_employee values(101,'anju','cs');
create table department_mca(dept_id int,dept_name char(20),dept_emp varchar(20));
create table department_cs(dept_id int,dept_name char(20),dept_emp varchar(20));
select *from  new_employee;
select *from department_mca;
select *from department_cs;

