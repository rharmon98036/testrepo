set search_path = hr;
create table jobs (
	job_id varchar(10) not null,
	job_title varchar(35) not null,
	min_salary integer,
	max_salary integer
) ;
comment on table jobs is e'jobs table with job titles and salary ranges. contains 19 rows.
references with employees and job_history table.';
comment on column jobs.job_id is e'primary key of jobs table.';
comment on column jobs.min_salary is e'minimum salary for a job title.';
comment on column jobs.max_salary is e'maximum salary for a job title';
comment on column jobs.job_title is e'a not null column that shows job title, e.g. ad_vp, fi_accountant';
alter table jobs add primary key (job_id);

