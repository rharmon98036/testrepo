set search_path = sh;
create table sales_1995 partition of sales
for values from (minvalue) to (' 1996-01-01 00:00:00');
