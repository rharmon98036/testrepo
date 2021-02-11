set search_path = hr;
alter table job_history add constraint jhist_job_fk foreign key (job_id) references jobs(job_id) on delete no action not deferrable initially immediate;

