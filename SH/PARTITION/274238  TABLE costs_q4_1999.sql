set search_path = sh;
create table costs_q4_1999 partition of costs
for values from (' 1999-10-01 00:00:00') to (' 2000-01-01 00:00:00');
