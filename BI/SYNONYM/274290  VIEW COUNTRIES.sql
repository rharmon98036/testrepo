set search_path = bi;
create view bi.countries as select * from sh.countries;
alter view bi.countries owner to sh;
grant all on bi.countries to bi;

