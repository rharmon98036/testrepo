set search_path = sh;
alter table costs add constraint costs_time_fk foreign key (time_id) references times(time_id) on delete no action not deferrable initially immediate;
