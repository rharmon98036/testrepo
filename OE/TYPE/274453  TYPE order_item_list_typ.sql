set search_path = oe;
create type order_item_list_typ as (order_item_list_typ order_item_typ[]);

-- inherited types are not supported in postgresql, replacing with inherited table
