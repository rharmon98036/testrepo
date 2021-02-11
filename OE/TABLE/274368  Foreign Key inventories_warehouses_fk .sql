set search_path = oe;
alter table inventories add constraint inventories_warehouses_fk foreign key (warehouse_id) references warehouses(warehouse_id) on delete no action not deferrable initially immediate not valid;
