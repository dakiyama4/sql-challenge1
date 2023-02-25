--create departments table
create table departments (
	dept_no VARCHAR(10) primary key NOT NULL,
	dept_name VARCHAR(50) NOT NULL
);

select * from departments
;

--create employees table
create table employees (
	empl INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);

select * from employees
;

--create titles table
create table titles (
	title_id VARCHAR(10) PRIMARY KEY NOT NULL, 
	title VARCHAR(30) NOT NULL

);

SELECT * FROM titles;

--create department employee table
create table dept_emp (
		emp_no INT NOT NULL, 
		dept_no VARCHAR(10) NOT NULL,
	foreign key (emp_no) references employees (empl),
	foreign key (dept_no) references departments (dept_no)
);

select * FROM dept_emp;

--create salaries table
create table salaries (
		emp_no INT NOT NULL, 
		salary INT NOT NULL,
	foreign key (emp_no) references employees (empl)
	
);

SELECT * FROM salaries;

--create department manager table
create table dept_manager (
		dept_no VARCHAR(10) NOT NULL, 
		emp_no INT NOT NULL,
	foreign key (emp_no) references employees (empl),
	foreign key (dept_no) references departments (dept_no)
	
);

SELECT * FROM dept_manager;

