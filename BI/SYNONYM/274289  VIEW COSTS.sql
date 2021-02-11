set search_path = bi;
create view bi.costs as select * from sh.costs;
alter view bi.costs owner to sh;
grant all on bi.costs to bi;

