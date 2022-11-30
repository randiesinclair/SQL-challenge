--Create departments table

CREATE TABLE departments (
dept_no varchar,
dept_name varchar
);
	
select * from departments;

-- Create dept_emp table
CREATE TABLE dept_emp (
emp_no varchar,
dept_no varchar,
PRIMARY KEY (emp_no, dept_no) 
);

select * from dept_emp;

-- Create dept_manager table
CREATE TABLE dept_manager (
dept_no varchar,
emp_no varchar,
PRIMARY KEY (emp_no, dept_no) 
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
hire_date date,
PRIMARY KEY (emp_no, emp_title) 
);

select * from employees;

-- Create salaries table
CREATE TABLE salaries (
emp_no SERIAL PRIMARY KEY,
salary int
);

select * from salaries;

-- Create titles table
CREATE TABLE titles (
title_id SERIAL PRIMARY KEY,
title varchar
);

select * from titles;