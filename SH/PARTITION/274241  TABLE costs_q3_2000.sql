set search_path = sh;
create table costs_q3_2000 partition of costs
for values from (' 2000-07-01 00:00:00') to (' 2000-10-01 00:00:00');
