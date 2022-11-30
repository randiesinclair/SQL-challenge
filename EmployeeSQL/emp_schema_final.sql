drop table departments;
drop table dept_emp;
drop table dept_manager;
drop table employees;
drop table salaries;
drop table titles;

--Create departments table

CREATE TABLE departments (
dept_no varchar PRIMARY KEY,
dept_name varchar NOT NULL
);
	
select * from departments;

-- Create dept_emp table
CREATE TABLE dept_emp (
emp_no varchar NOT NULL,
dept_no varchar NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

select * from dept_emp;

-- Create dept_manager table
CREATE TABLE dept_manager (
dept_no varchar NOT NULL,
emp_no varchar NOT NULL PRIMARY KEY,
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager;

-- Create employees table
CREATE TABLE employees (
emp_no varchar NOT NULL,
emp_title varchar NOT NULL,
birth_date date NOT NULL,
first_name varchar NOT NULL,
last_name varchar NOT NULL,
sex varchar NOT NULL,
hire_date date NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title) REFERENCES titles (title_id)
);

select * from employees;

-- Create salaries table
CREATE TABLE salaries (
emp_no varchar NOT NULL PRIMARY KEY,
salary int NOT NULL,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries;

-- Create titles table
CREATE TABLE titles (
title_id varchar NOT NULL PRIMARY KEY,
title varchar NOT NULL
);

select * from titles;