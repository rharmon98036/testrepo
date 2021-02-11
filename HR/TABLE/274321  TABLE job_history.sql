set search_path = hr;
create table job_history (
	employee_id integer not null,
	start_date timestamp not null,
	end_date timestamp not null,
	job_id varchar(10) not null,
	department_id smallint
) ;
comment on table job_history is e'table that stores job history of the employees. if an employee
changes departments within the job or changes jobs within the department,
new rows get inserted into this table with old job information of the
employee. contains a complex primary key: employee_id+start_date.
contains 25 rows. references with jobs, employees, and departments tables.';
comment on column job_history.start_date is e'a not null column in the complex primary key employee_id+start_date.
must be less than the end_date of the job_history table. (enforced by
constraint jhist_date_interval)';
comment on column job_history.department_id is e'department id in which the employee worked in the past; foreign key to deparment_id column in the departments table';
comment on column job_history.end_date is e'last day of the employee in this job role. a not null column. must be
greater than the start_date of the job_history table.
(enforced by constraint jhist_date_interval)';
comment on column job_history.job_id is e'job role in which the employee worked in the past; foreign key to
job_id column in the jobs table. a not null column.';
comment on column job_history.employee_id is e'a not null column in the complex primary key employee_id+start_date.
foreign key to employee_id column of the employee table';
