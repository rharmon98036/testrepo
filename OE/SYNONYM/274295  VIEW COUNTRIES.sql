set search_path = oe;
create view oe.countries as select * from hr.countries;
alter view oe.countries owner to hr;
grant all on oe.countries to oe;

