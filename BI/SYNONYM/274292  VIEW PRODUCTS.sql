set search_path = bi;
create view bi.products as select * from sh.products;
alter view bi.products owner to sh;
grant all on bi.products to bi;

