set search_path = sh;
create table sales_q4_1998 partition of sales
for values from (' 1998-10-01 00:00:00') to (' 1999-01-01 00:00:00');
