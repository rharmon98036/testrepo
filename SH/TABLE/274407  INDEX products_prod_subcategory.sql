set search_path = sh;
create index products_prod_subcategory on products (prod_subcategory);
alter table products add primary key (prod_id);

