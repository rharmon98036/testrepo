set search_path = oe;
create index orders_sales_rep_id on orders (sales_rep_id);
alter table orders add primary key (order_id);
alter table orders add constraint order_total_min check (order_total >= 0);
alter table orders add constraint order_mode_lov check (order_mode in ('direct','online'));

