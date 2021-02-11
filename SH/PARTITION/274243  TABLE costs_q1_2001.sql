set search_path = sh;
create table costs_q1_2001 partition of costs
for values from (' 2001-01-01 00:00:00') to (' 2001-04-01 00:00:00');
