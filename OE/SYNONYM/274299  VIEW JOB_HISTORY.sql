set search_path = oe;
create view oe.job_history as select * from hr.job_history;
alter view oe.job_history owner to hr;
grant all on oe.job_history to oe;

