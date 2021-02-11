set search_path = oe;
create table order_items (
	order_id bigint not null,
	line_item_id smallint not null,
	product_id integer not null,
	unit_price double precision,
	quantity integer
) ;
comment on table order_items is e'example of many-to-many resolution.';
comment on column order_items.order_id is e'part of concatenated primary key, references orders.order_id.';
comment on column order_items.product_id is e'references product_information.product_id.';
comment on column order_items.line_item_id is e'part of concatenated primary key.';
