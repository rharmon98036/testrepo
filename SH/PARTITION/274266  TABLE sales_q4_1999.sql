set search_path = sh;
create table sales_q4_1999 partition of sales
for values from (' 1999-10-01 00:00:00') to (' 2000-01-01 00:00:00');
