set search_path = hr;
create table employees (
	employee_id integer not null,
	first_name varchar(20),
	last_name varchar(25) not null,
	email varchar(25) not null,
	phone_number varchar(20),
	hire_date timestamp not null,
	job_id varchar(10) not null,
	salary double precision,
	commission_pct real,
	manager_id integer,
	department_id smallint
) ;
comment on table employees is e'employees table. contains 107 rows. references with departments,
jobs, job_history tables. contains a self reference.';
comment on column employees.hire_date is e'date when the employee started on this job. a not null column.';
comment on column employees.salary is e'monthly salary of the employee. must be greater
than zero (enforced by constraint emp_salary_min)';
comment on column employees.job_id is e'current job of the employee; foreign key to job_id column of the
jobs table. a not null column.';
comment on column employees.email is e'email id of the employee';
comment on column employees.phone_number is e'phone number of the employee; includes country code and area code';
comment on column employees.manager_id is e'manager id of the employee; has same domain as manager_id in
departments table. foreign key to employee_id column of employees table.
(useful for reflexive joins and connect by query)';
comment on column employees.first_name is e'first name of the employee. a not null column.';
comment on column employees.last_name is e'last name of the employee. a not null column.';
comment on column employees.commission_pct is e'commission percentage of the employee; only employees in sales
department elgible for commission percentage';
comment on column employees.department_id is e'department id where employee works; foreign key to department_id
column of the departments table';
comment on column employees.employee_id is e'primary key of employees table.';
