set search_path = sh;
create table costs_q4_2002 partition of costs
for values from (' 2002-10-01 00:00:00') to (' 2003-01-01 00:00:00');
