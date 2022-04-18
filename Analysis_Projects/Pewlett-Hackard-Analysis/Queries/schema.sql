-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

-- create table for Employees
CREATE TABLE employees (
	 emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);

--create table for deptartment managers
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

--create table for salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
 	from_date DATE NOT NULL,
 	to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

--create table for dept_emp
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE not null,
	to_date DATE not null,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no, from_date, to_date)
);

--create a table for titles
CREATE TABLE titles(
	emp_no int not null,
	title varchar (40) not null,
	from_date date not null,
	to_date date not null,
  	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
 	PRIMARY KEY (emp_no)
);
--run a query
select * from departments;

select * from dept_manager;

select * from employees;

select * from dept_emp;

select * from salaries;

select * from titles;

DROP TABLE dept_emp

--create table for dept_emp
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE not null,
	to_date DATE not null,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no, from_date, to_date)
);

DROP TABLE titles

--create a table for titles
CREATE TABLE titles(
	emp_no int not null,
	title varchar (40) not null,
	from_date date not null,
	to_date date not null,
  	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
 	PRIMARY KEY (emp_no, title, from_date, to_date)
);