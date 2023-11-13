--1. List the employee number, last name, first name, sex and salary of each employee

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e, salaries as s
where e.emp_no = s.emp_no;

--2. List the first name, last name and hire date for the employees who were hired in 1986.

select first_name, last_name, extract(year from hire_date) AS hire_year
from employees
where extract(year from hire_date) = 1986;

--3. List the manager of each department along with their department number, department name, employee number, last name and first name.

select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, t.title
from departments as d, employees as e, dept_manager as m, titles as t
where d.dept_no = m.dept_no and e.emp_no = m.emp_no and e.emp_title_id = t.title_id;

--4. List the department number for each employee along with that employee's employee number, last name, first name and department name.

select d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from departments as d, employees as e, dept_emp as de
where de.dept_no = d.dept_no and de.emp_no = e.emp_no;

--5. List first name, last name and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--6. List each employee in the Sales department, including their employee number, last name and first name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e, departments as d, dept_emp as de
where e.emp_no = de.emp_no and d.dept_no = de.dept_no and d.dept_name = 'Sales';

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e, departments as d, dept_emp as de
where e.emp_no = de.emp_no and d.dept_no = de.dept_no and (d.dept_name = 'Sales' or d.dept_name = 'Development');

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

select count(last_name)as "frequency", last_name
from employees group by last_name order by frequency DESC;








