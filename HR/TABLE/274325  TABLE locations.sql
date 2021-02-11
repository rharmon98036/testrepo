set search_path = hr;
create table locations (
	location_id smallint not null,
	street_address varchar(40),
	postal_code varchar(12),
	city varchar(30) not null,
	state_province varchar(25),
	country_id char(2)
) ;
comment on table locations is e'locations table that contains specific address of a specific office,
warehouse, and/or production site of a company. does not store addresses /
locations of customers. contains 23 rows; references with the
departments and countries tables. ';
comment on column locations.country_id is e'country where an office, warehouse, or production site of a company is
located. foreign key to country_id column of the countries table.';
comment on column locations.city is e'a not null column that shows city where an office, warehouse, or
production site of a company is located. ';
comment on column locations.location_id is e'primary key of locations table';
comment on column locations.postal_code is e'postal code of the location of an office, warehouse, or production site
of a company. ';
comment on column locations.street_address is e'street address of an office, warehouse, or production site of a company.
contains building number and street name';
comment on column locations.state_province is e'state or province where an office, warehouse, or production site of a
company is located.';
