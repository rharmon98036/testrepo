set search_path = sh;
create table sales_q4_2000 partition of sales
for values from (' 2000-10-01 00:00:00') to (' 2001-01-01 00:00:00');
