set search_path = sh;
create table costs_q2_2002 partition of costs
for values from (' 2002-04-01 00:00:00') to (' 2002-07-01 00:00:00');
