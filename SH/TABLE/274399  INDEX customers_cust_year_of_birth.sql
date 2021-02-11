set search_path = sh;
create index customers_cust_year_of_birth on customers (cust_year_of_birth);
alter table customers add primary key (cust_id);
