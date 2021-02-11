set search_path = sh;
create table sales_q1_2001 partition of sales
for values from (' 2001-01-01 00:00:00') to (' 2001-04-01 00:00:00');
