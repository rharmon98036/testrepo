set search_path = oe;
create unique index order_items_order_id_product_id on order_items (order_id, product_id);
alter table order_items add primary key (order_id,line_item_id);

