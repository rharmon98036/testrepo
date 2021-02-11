set search_path = oe;
create type phone_list_typ as (phone_list_typ varchar(25)[5]);

-- inherited types are not supported in postgresql, replacing with inherited table
