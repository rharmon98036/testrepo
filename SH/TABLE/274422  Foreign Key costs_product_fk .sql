set search_path = sh;
alter table costs add constraint costs_product_fk foreign key (prod_id) references products(prod_id) on delete no action not deferrable initially immediate;

