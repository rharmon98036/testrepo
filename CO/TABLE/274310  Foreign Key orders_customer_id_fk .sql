set search_path = co;
alter table orders add constraint orders_customer_id_fk foreign key (customer_id) references customers(customer_id) on delete no action not deferrable initially immediate;
