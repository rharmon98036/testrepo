set search_path = sh;
create table costs_q1_1998 partition of costs
for values from (' 1998-01-01 00:00:00') to (' 1998-04-01 00:00:00');
