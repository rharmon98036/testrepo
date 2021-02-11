set search_path = hr;
create table departments (
	department_id smallint not null,
	department_name varchar(30) not null,
	manager_id integer,
	location_id smallint
) ;
comment on table departments is e'departments table that shows details of departments where employees
work. contains 27 rows; references with locations, employees, and job_history tables.';
comment on column departments.manager_id is e'manager_id of a department. foreign key to employee_id column of employees table. the manager_id column of the employee table references this column.';
comment on column departments.department_id is e'primary key column of departments table.';
comment on column departments.department_name is e'a not null column that shows name of a department. administration,
marketing, purchasing, human resources, shipping, it, executive, public
relations, sales, finance, and accounting. ';
comment on column departments.location_id is e'location id where a department is located. foreign key to location_id column of locations table.';
