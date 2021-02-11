set search_path = sh;
create table costs_1995 partition of costs
for values from (minvalue) to (' 1996-01-01 00:00:00');
