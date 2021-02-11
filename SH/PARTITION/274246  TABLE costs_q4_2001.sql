set search_path = sh;
create table costs_q4_2001 partition of costs
for values from (' 2001-10-01 00:00:00') to (' 2002-01-01 00:00:00');
