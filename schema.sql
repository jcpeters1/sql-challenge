CREATE TABLE departments(
	dept_no VARCHAR(15) PRIMARY KEY,
	dept_name VARCHAR(30)
);

CREATE TABLE dept_emp(
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no),
	emp_no VARCHAR(15),
	dept_no VARCHAR(15),
	from_date DATE,
	to_date DATE
);

CREATE TABLE dept_manager(
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no, dept_no),
	dept_no VARCHAR,
	emp_no VARCHAR,
	from_date DATE,
	to_date DATE
);

CREATE TABLE employees(
	emp_no VARCHAR(15) PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(10),
	hire_date DATE
);

CREATE TABLE titles(
	PRIMARY KEY(emp_no, title, from_date),
	emp_no VARCHAR,
	title VARCHAR(30),
	from_date DATE,
	to_date DATE
);

CREATE TABLE salaries(
	PRIMARY KEY(emp_no, salary),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	emp_no VARCHAR(15),
	salary INTEGER,
	from_date DATE,
	to_date DATE
);