set search_path = sh;
create table sales_q3_2002 partition of sales
for values from (' 2002-07-01 00:00:00') to (' 2002-10-01 00:00:00');
