set search_path = hr;
create index locations_state_province on locations (state_province);
alter table locations add primary key (location_id);

