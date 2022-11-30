drop table departments;
drop table dept_emp;
drop table dept_manager;
drop table employees;
drop table salaries;
drop table titles;

--Create departments table

CREATE TABLE departments (
dept_no varchar PRIMARY KEY,
dept_name varchar
);
	
select * from departments;

-- Create dept_emp table
CREATE TABLE dept_emp (
emp_no varchar,
dept_no varchar,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

select * from dept_emp;

-- Create dept_manager table
CREATE TABLE dept_manager (
dept_no varchar,
emp_no varchar PRIMARY KEY,
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
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
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title) REFERENCES titles (title_id)
);

select * from employees;

-- Create salaries table
CREATE TABLE salaries (
emp_no varchar PRIMARY KEY,
salary int,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries;

-- Create titles table
CREATE TABLE titles (
title_id varchar PRIMARY KEY,
title varchar
);

select * from titles;