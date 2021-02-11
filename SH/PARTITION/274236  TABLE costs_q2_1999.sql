set search_path = sh;
create table costs_q2_1999 partition of costs
for values from (' 1999-04-01 00:00:00') to (' 1999-07-01 00:00:00');
