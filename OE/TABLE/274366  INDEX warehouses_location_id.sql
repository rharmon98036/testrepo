set search_path = oe;
create index warehouses_location_id on warehouses (location_id);
alter table warehouses add primary key (warehouse_id);
