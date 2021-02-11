set search_path = sh;
create table sales_q2_1998 partition of sales
for values from (' 1998-04-01 00:00:00') to (' 1998-07-01 00:00:00');
