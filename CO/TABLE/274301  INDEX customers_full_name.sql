set search_path = co;
create index customers_full_name on customers (full_name);
alter table customers add unique (email_address);
alter table customers add primary key (customer_id);

