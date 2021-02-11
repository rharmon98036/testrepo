set search_path = sh;
create table costs_q1_2000 partition of costs
for values from (' 2000-01-01 00:00:00') to (' 2000-04-01 00:00:00');
