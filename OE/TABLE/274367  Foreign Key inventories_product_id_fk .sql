set search_path = oe;
alter table inventories add constraint inventories_product_id_fk foreign key (product_id) references product_information(product_id) on delete no action not deferrable initially immediate;

