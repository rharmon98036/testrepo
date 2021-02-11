set search_path = sh;
create table sales_q1_1999 partition of sales
for values from (' 1999-01-01 00:00:00') to (' 1999-04-01 00:00:00');
