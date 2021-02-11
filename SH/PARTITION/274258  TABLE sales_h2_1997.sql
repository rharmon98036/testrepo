set search_path = sh;
create table sales_h2_1997 partition of sales
for values from (' 1997-07-01 00:00:00') to (' 1998-01-01 00:00:00');
