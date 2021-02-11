set search_path = hr;
create or replace function trigger_fct_update_job_history() returns trigger as $body$
begin
  perform add_job_history(old.employee_id, old.hire_date, localtimestamp,
                  old.job_id, old.department_id);
return new;
end
$body$
 language 'plpgsql';

