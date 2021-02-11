set search_path = oe;
alter table order_items add constraint order_items_product_id_fk foreign key (product_id) references product_information(product_id) on delete no action not deferrable initially immediate;
