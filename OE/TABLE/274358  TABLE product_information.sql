set search_path = oe;
create table product_information (
	product_id integer not null,
	product_name varchar(50),
	product_description varchar(2000),
	category_id smallint,
	weight_class smallint,
	warranty_period interval year to month,
	supplier_id integer,
	product_status varchar(20),
	list_price double precision,
	min_price double precision,
	catalog_url varchar(50)
) ;
comment on table product_information is e'non-industry-specific data in various categories.';
comment on column product_information.warranty_period is e'interval yeaer to month column, low cardinality, can be used for bitmap
index.';
comment on column product_information.product_status is e'check constraint. appropriate for complex rules, such as "all products in
status production must have at least one inventory entry." also appropriate
for a trigger auditing status change.';
comment on column product_information.product_id is e'primary key column.';
comment on column product_information.product_description is e'primary language description corresponding to translated_description in
oe.product_descriptions, added to provide non-nls text columns for oc views
to accss.';
comment on column product_information.weight_class is e'low cardinality column, can be used for bitmap index.';
comment on column product_information.supplier_id is e'offers possibility of extensions outside common schema.';
comment on column product_information.category_id is e'low cardinality column, can be used for bitmap index.
schema sh uses it as foreign key';
