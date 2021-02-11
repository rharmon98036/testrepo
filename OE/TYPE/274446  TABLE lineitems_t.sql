set search_path = oe;
create table lineitems_t (
"sys_xdbpd$" "xdb"."xdb$raw_list_t","lineitem" "lineitem_v"
);

-- inherited types are not supported in postgresql, replacing with inherited table
