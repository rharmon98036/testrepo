set search_path = co;
alter table orders add constraint orders_store_id_fk foreign key (store_id) references stores(store_id) on delete no action not deferrable initially immediate;

