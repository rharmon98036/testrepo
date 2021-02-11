set search_path = sh;
create table costs_q3_2003 partition of costs
for values from (' 2003-07-01 00:00:00') to (' 2003-10-01 00:00:00');
