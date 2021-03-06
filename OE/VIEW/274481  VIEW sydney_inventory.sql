set search_path = oe;
create or replace view sydney_inventory (product_id, product_name, quantity_on_hand) as select  p.product_id
,      p.product_name
,      i.quantity_on_hand
 from   inventories i
,      warehouses  w
,      products    p
where  p.product_id = i.product_id
and    i.warehouse_id = w.warehouse_id
and    w.warehouse_name = 'sydney';

comment on view sydney_inventory  is e'this view shows inventories at the sydney warehouse.';

