set search_path = sh;
create table sales_q2_2001 partition of sales
for values from (' 2001-04-01 00:00:00') to (' 2001-07-01 00:00:00');
