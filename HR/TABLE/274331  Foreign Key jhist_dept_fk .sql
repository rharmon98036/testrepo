set search_path = hr;
alter table job_history add constraint jhist_dept_fk foreign key (department_id) references departments(department_id) on delete no action not deferrable initially immediate;

