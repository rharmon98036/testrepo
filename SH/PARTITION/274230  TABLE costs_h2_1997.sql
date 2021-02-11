set search_path = sh;
create table costs_h2_1997 partition of costs
for values from (' 1997-07-01 00:00:00') to (' 1998-01-01 00:00:00');
