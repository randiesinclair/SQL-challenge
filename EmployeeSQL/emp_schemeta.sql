--Create departments table

CREATE TABLE departments (
dept_no varchar,
dept_name varchar
);
	
select * from departments;

-- Create dept_emp table
CREATE TABLE dept_emp (
emp_no varchar,
dept_no varchar
);

select * from dept_emp;

-- Create dept_manager table
CREATE TABLE dept_manager (
dept_no varchar,
emp_no varchar
);

select * from dept_manager;

-- Create employees table
CREATE TABLE employees (
emp_no varchar,
emp_title varchar,
birth_date date,
first_name varchar,
last_name varchar,
sex varchar,
hire_date date
);

select * from employees;

-- Create salaries table
CREATE TABLE salaries (
emp_no varchar,
salary int
);

select * from salaries;

-- Create titles table
CREATE TABLE titles (
title_id varchar,
title varchar
);

select * from titles;

