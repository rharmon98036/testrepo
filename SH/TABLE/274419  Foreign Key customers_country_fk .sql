set search_path = sh;
alter table customers add constraint customers_country_fk foreign key (country_id) references countries(country_id) on delete no action not deferrable initially immediate not valid;
