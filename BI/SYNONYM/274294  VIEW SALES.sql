set search_path = bi;
create view bi.sales as select * from sh.sales;
alter view bi.sales owner to sh;
grant all on bi.sales to bi;

