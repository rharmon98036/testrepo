set search_path = sh;
alter table sales add constraint sales_time_fk foreign key (time_id) references times(time_id) on delete no action not deferrable initially immediate;

