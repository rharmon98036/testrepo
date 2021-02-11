set search_path = oe;
create table rejection_t (
"sys_xdbpd$" "xdb"."xdb$raw_list_t","rejected_by" varchar(2048),"date_rejected" timestamp,"reason_rejected" varchar(2048)
);

-- inherited types are not supported in postgresql, replacing with inherited table
