--Part 1
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from "Employees" e
join "Salaries" s on e.emp_no = s.emp_no;

--Part 2
select first_name, last_name, hire_date
from "Employees"
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date;

--Part 3
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from "Department_manager" dm
join "Employees" e
on dm.emp_no = e.emp_no
join "Departments" d
on dm.dept_no = d.dept_no
order by d.dept_name;

--Part 4
select d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from "Employees" e
join "Department_employees" de
on e.emp_no = de.emp_no
join "Departments" d 
on d.dept_no = de.dept_no
order by d.dept_name;

--Part 5
select first_name, last_name, sex
from "Employees"
where first_name = 'Hercules' and last_name like 'B%'
order by last_name;

--Part 6
select d.dept_name, e.emp_no, e.last_name, e.first_name
from "Employees" e
join "Department_employees" de 
on e.emp_no = de.emp_no
join "Departments" d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales';

--Part 7
select e.emp_no, e.last_name, e.first_name, d.dept_name
from "Employees" e
join "Department_employees" de 
on e.emp_no = de.emp_no
join "Departments" d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'
order by d.dept_name;

--Part 8
select last_name, count(emp_no) as same_last_name
from "Employees"
group by last_name
order by same_last_name desc;