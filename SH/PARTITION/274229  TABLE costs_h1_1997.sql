set search_path = sh;
create table costs_h1_1997 partition of costs
for values from (' 1997-01-01 00:00:00') to (' 1997-07-01 00:00:00');
