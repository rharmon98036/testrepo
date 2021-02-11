set search_path = oe;
create table product_descriptions (
	product_id integer not null,
	language_id varchar(3) not null,
	translated_name varchar(50) not null,
	translated_description varchar(2000) not null
) ;
comment on table product_descriptions is e'non-industry-specific design, allows selection of nls-setting-specific data
derived at runtime, for example using the products view.';
comment on column product_descriptions.language_id is e'primary key column.';
comment on column product_descriptions.product_id is e'primary key column.';
