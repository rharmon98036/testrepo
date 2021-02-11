set search_path = sh;
create table costs_q2_2003 partition of costs
for values from (' 2003-04-01 00:00:00') to (' 2003-07-01 00:00:00');
