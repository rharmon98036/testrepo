set search_path = oe;
create index inventories_warehouse_id_product_id on inventories (warehouse_id, product_id);
