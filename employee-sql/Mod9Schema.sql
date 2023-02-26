CREATE TABLE employees (
	emp_no integer PRIMARY KEY NOT NULL,
	emp_title_id varchar(20),
	birthdate DATE,
	first_name varchar(20)NOT NULL,
	last_name varchar(20)NOT NULL,
	sex varchar(2),
	hire_date DATE
);
--next table
CREATE TABLE dept_emp (
	emp_no integer NOT NULL,
	dept_no varchar(20),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
--next table
CREATE TABLE dept_manager (
	dept_no varchar(20),
	emp_no integer PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
--next table
CREATE TABLE departments (
	dept_no varchar(20),
	dept_name varchar(20),
	FOREIGN KEY (dept_no) REFERENCES dept_emp(dept_no));
--next table
CREATE TABLE salaries (
	emp_no integer PRIMARY KEY,
	salary integer,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
--next table
CREATE TABLE title (
	title_id varchar(20) PRIMARY KEY,
	title varchar(30)
);


