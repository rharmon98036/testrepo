set search_path = sh;
create table costs_q4_2003 partition of costs
for values from (' 2003-10-01 00:00:00') to (' 2004-01-01 00:00:00');


