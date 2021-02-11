set search_path = hr;
create index employees_last_name_first_name on employees (last_name, first_name);
alter table employees add primary key (employee_id);
alter table employees add unique (email);
alter table employees add constraint emp_salary_min check (salary > 0);

