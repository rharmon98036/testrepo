set search_path = sh;
alter table sales add constraint sales_product_fk foreign key (prod_id) references products(prod_id) on delete no action not deferrable initially immediate;

