set search_path = hr;
create table regions (
	region_id bigint not null,
	region_name varchar(25)
) ;
alter table regions add primary key (region_id);
