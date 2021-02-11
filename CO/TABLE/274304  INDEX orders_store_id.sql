set search_path = co;
create index orders_store_id on orders (store_id);
alter table orders add primary key (order_id);
alter table orders add constraint orders_status_c check ( order_status in ( 'cancelled','complete','open','paid','refunded','shipped')
);

