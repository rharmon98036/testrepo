set search_path = sh;
create table costs_q4_1998 partition of costs
for values from (' 1998-10-01 00:00:00') to (' 1999-01-01 00:00:00');
