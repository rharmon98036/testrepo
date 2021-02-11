set search_path = hr;
create index departments_location_id on departments (location_id);
alter table departments add primary key (department_id);

