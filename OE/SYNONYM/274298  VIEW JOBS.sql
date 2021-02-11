set search_path = oe;
create view oe.jobs as select * from hr.jobs;
alter view oe.jobs owner to hr;
grant all on oe.jobs to oe;

