set search_path = hr;
alter table job_history add constraint jhist_emp_fk foreign key (employee_id) references employees(employee_id) on delete no action not deferrable initially immediate;
