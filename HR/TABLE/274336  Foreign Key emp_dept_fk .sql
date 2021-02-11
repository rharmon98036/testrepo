set search_path = hr;
alter table employees add constraint emp_dept_fk foreign key (department_id) references departments(department_id) on delete no action not deferrable initially immediate;
