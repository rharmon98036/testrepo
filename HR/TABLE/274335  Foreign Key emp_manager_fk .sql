set search_path = hr;
alter table employees add constraint emp_manager_fk foreign key (manager_id) references employees(employee_id) on delete no action not deferrable initially immediate;

