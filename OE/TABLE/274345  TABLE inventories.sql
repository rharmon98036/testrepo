set search_path = oe;
create table inventories (
	product_id integer not null,
	warehouse_id smallint not null,
	quantity_on_hand integer not null
) ;
comment on table inventories is e'tracks availability of products by product_it and warehouse_id.';
comment on column inventories.product_id is e'part of concatenated primary key, references product_information.product_id.';
comment on column inventories.warehouse_id is e'part of concatenated primary key, references warehouses.warehouse_id.';
