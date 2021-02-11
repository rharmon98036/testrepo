set search_path = co;
create unique index order_items_product_id_order_id on order_items (product_id, order_id);
alter table order_items add primary key (order_id,line_item_id);
alter table order_items add unique (product_id,order_id);

