set search_path = hr;
create table countries (
	country_id char(2) not null,
	country_name varchar(40),
	region_id bigint
) ;
comment on table countries is e'country table. contains 25 rows. references with locations table.';
comment on column countries.region_id is e'region id for the country. foreign key to region_id column in the departments table.';
comment on column countries.country_id is e'primary key of countries table.';
comment on column countries.country_name is e'country name';
alter table countries add primary key (country_id);

