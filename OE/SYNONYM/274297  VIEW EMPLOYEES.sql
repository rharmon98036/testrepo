set search_path = oe;
create view oe.employees as select * from hr.employees;
alter view oe.employees owner to hr;
grant all on oe.employees to oe;

