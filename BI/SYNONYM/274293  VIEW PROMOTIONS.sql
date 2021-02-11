set search_path = bi;
create view bi.promotions as select * from sh.promotions;
alter view bi.promotions owner to sh;
grant all on bi.promotions to bi;

