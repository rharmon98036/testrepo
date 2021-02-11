set search_path = hr;
alter table departments add constraint dept_loc_fk foreign key (location_id) references locations(location_id) on delete no action not deferrable initially immediate;
