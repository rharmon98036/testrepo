set search_path = sh;
create table products (
	prod_id integer not null,
	prod_name varchar(50) not null,
	prod_desc varchar(4000) not null,
	prod_subcategory varchar(50) not null,
	prod_subcategory_id bigint not null,
	prod_subcategory_desc varchar(2000) not null,
	prod_category varchar(50) not null,
	prod_category_id bigint not null,
	prod_category_desc varchar(2000) not null,
	prod_weight_class smallint not null,
	prod_unit_of_measure varchar(20),
	prod_pack_size varchar(30) not null,
	supplier_id integer not null,
	prod_status varchar(20) not null,
	prod_list_price double precision not null,
	prod_min_price double precision not null,
	prod_total varchar(13) not null,
	prod_total_id bigint not null,
	prod_src_id bigint,
	prod_eff_from timestamp,
	prod_eff_to timestamp,
	prod_valid varchar(1)
) ;
comment on table products is e'dimension table';
comment on column products.prod_name is e'product name';
comment on column products.prod_subcategory is e'product subcategory';
comment on column products.prod_min_price is e'product minimum price';
comment on column products.prod_list_price is e'product list price';
comment on column products.prod_weight_class is e'product weight class';
comment on column products.prod_pack_size is e'product package size';
comment on column products.supplier_id is e'this column';
comment on column products.prod_subcategory_desc is e'product subcategory description';
comment on column products.prod_category is e'product category';
comment on column products.prod_id is e'primary key';
comment on column products.prod_desc is e'product description';
comment on column products.prod_status is e'product status';
comment on column products.prod_category_desc is e'product category description';
comment on column products.prod_unit_of_measure is e'product unit of measure';
