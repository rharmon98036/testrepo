set search_path = sh;
create table costs_q3_1998 partition of costs
for values from (' 1998-07-01 00:00:00') to (' 1998-10-01 00:00:00');
