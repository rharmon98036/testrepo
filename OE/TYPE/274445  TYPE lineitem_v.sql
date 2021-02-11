set search_path = oe;
create type lineitem_v as (lineitem_v "lineitem_t"[2147483647]);

-- inherited types are not supported in postgresql, replacing with inherited table
