drop table departments;
drop table dept_emp;
drop table dept_manager;
drop table employees;
drop table salaries;
drop table titles;

--Create departments table

CREATE TABLE departments (
dept_no varchar(4) PRIMARY KEY,
dept_name varchar(20) NOT NULL
);
	
select * from departments;

-- Create dept_emp table
CREATE TABLE dept_emp (
emp_no varchar(6) NOT NULL,
dept_no varchar(4) NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

select * from dept_emp;

-- Create dept_manager table
CREATE TABLE dept_manager (
dept_no varchar(4) NOT NULL,
emp_no varchar(6) NOT NULL PRIMARY KEY,
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager;

-- Create employees table
CREATE TABLE employees (
emp_no varchar(6) NOT NULL,
emp_title varchar(5) NOT NULL,
birth_date date NOT NULL,
first_name varchar(20) NOT NULL,
last_name varchar(20) NOT NULL,
sex varchar(1) NOT NULL,
hire_date date NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title) REFERENCES titles (title_id)
);

select * from employees;

-- Create salaries table
CREATE TABLE salaries (
emp_no varchar(6) NOT NULL PRIMARY KEY,
salary int NOT NULL,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries;

-- Create titles table
CREATE TABLE titles (
title_id varchar(5) NOT NULL PRIMARY KEY,
title varchar(20) NOT NULL
);

select * from titles;