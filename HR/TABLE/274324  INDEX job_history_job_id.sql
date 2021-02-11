set search_path = hr;
create index job_history_job_id on job_history (job_id);
alter table job_history add primary key (employee_id,start_date);
alter table job_history add constraint jhist_date_interval check (end_date > start_date);

