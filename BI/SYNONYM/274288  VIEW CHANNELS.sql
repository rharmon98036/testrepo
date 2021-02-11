set search_path = bi;
create view bi.channels as select * from sh.channels;
alter view bi.channels owner to sh;
grant all on bi.channels to bi;

