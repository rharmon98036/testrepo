set search_path = sh;
create table countries (
	country_id bigint not null,
	country_iso_code char(2) not null,
	country_name varchar(40) not null,
	country_subregion varchar(30) not null,
	country_subregion_id bigint not null,
	country_region varchar(20) not null,
	country_region_id bigint not null,
	country_total varchar(11) not null,
	country_total_id bigint not null,
	country_name_hist varchar(40)
) ;
comment on table countries is e'country dimension table (snowflake)';
comment on column countries.country_id is e'primary key';
comment on column countries.country_name is e'country name';
comment on column countries.country_region is e'e.g. europe, asia';
comment on column countries.country_subregion is e'e.g. western europe, to allow hierarchies';
alter table countries add primary key (country_id);

