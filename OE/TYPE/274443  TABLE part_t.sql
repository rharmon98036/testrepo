set search_path = oe;
create table part_t (
"sys_xdbpd$" "xdb"."xdb$raw_list_t","part_number" varchar(14),"quantity" double precision,"unitprice" double precision
);

-- inherited types are not supported in postgresql, replacing with inherited table
