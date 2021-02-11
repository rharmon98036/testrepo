set search_path = sh;
create table costs_1996 partition of costs
for values from (' 1996-01-01 00:00:00') to (' 1997-01-01 00:00:00');
