set search_path = co;
alter table order_items add constraint order_items_product_id_fk foreign key (product_id) references products(product_id) on delete no action not deferrable initially immediate;

