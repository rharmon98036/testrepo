set search_path = oe;
create index customers_cust_last_name_cust_first_name on customers (upper(cust_last_name), upper(cust_first_name));
alter table customers add primary key (customer_id);
alter table customers add constraint customer_credit_limit_max check (credit_limit <= 5000);
alter table customers add constraint customer_id_min check (customer_id > 0);

