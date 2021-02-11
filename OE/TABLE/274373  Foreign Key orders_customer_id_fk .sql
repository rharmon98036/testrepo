set search_path = oe;
alter table orders add constraint orders_customer_id_fk foreign key (customer_id) references customers(customer_id) on delete set null not deferrable initially immediate;

