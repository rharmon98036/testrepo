set search_path = oe;
create or replace view oc_inventories (product_id, warehouse, quantity_on_hand) as select  i.product_id,
           warehouse_typ(w.warehouse_id, w.warehouse_name, w.location_id),
           i.quantity_on_hand
     from inventories i, warehouses w
    where i.warehouse_id=w.warehouse_id;

