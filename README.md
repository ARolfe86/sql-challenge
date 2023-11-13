# sql-challenge
Module 9 Project

To begin this project I started by inspecting the CSV files that were provided. An ERD of the tables was created using the QuickDBD tool. 

The first table created was the "titles" table due to the unique column for title_id and it doesn't rely on any other table. I then created the "employees" table since that seemed to be the central table that could link the other tables. I continued with the "departments" table because that was needed to link the next two tables, "dept_emp" and "dept_manager". The "salaries" table was added last. 

The "dept_emp" and "dept_manager" tables needed a composite key since they both did not have any columns with unique values to use as a primary key.

Finally, code was written to answer the following questions:

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).