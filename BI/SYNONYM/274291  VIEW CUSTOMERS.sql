set search_path = bi;
create view bi.customers as select * from sh.customers;
alter view bi.customers owner to sh;
grant all on bi.customers to bi;

