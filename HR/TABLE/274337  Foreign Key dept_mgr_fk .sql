set search_path = hr;
alter table departments add constraint dept_mgr_fk foreign key (manager_id) references employees(employee_id) on delete no action not deferrable initially immediate;

