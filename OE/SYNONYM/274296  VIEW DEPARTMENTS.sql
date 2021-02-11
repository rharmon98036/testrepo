set search_path = oe;
create view oe.departments as select * from hr.departments;
alter view oe.departments owner to hr;
grant all on oe.departments to oe;

