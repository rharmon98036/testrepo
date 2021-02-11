set search_path = oe;
create type action_v as (action_v "action_t"[4]);

-- inherited types are not supported in postgresql, replacing with inherited table
