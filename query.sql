SELECT e.emp_no, e.last_name, e.first_name, e.gender, salaries.salary
FROM employees AS e
INNER JOIN salaries
ON e.emp_no=salaries.emp_no;

SELECT * FROM employees
WHERE (hire_date BETWEEN '1986-01-01' AND '1986-12-31');

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager as dm
INNER JOIN departments as d
ON dm.dept_no = d.dept_no
INNER JOIN employees as e
ON dm.emp_no = e.emp_no;

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
INNER JOIN departments as d
ON de.dept_no = d.dept_no
INNER JOIN employees as e
ON de.emp_no = e.emp_no;

SELECT first_name, last_name
FROM employees
WHERE employees.first_name='Hercules'
AND employees.last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN departments as d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN departments as d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

SELECT last_name, COUNT(last_name) AS "# of emp with last name"
FROM employees
GROUP BY last_name
ORDER BY "# of emp with last name" DESC;