set search_path = oe;
create index inventories_product_id on inventories (product_id);
alter table inventories add primary key (product_id,warehouse_id);
alter table lineitem_table add primary key (nested_table_id);

