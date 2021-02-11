set search_path = oe;
create table shipping_instructions_t (
"sys_xdbpd$" "xdb"."xdb$raw_list_t","ship_to_name" varchar(24),"ship_to_address" varchar(24),"ship_to_phone" varchar(24)
);

-- inherited types are not supported in postgresql, replacing with inherited table
