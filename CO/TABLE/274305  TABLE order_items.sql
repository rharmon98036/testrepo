set search_path = co;
create table order_items (
	order_id bigint not null,
	line_item_id bigint not null,
	product_id bigint not null,
	unit_price double precision not null,
	quantity bigint not null
) ;
comment on table order_items is e'details of which products the customer has purchased in an order';
comment on column order_items.unit_price is e'how much the customer paid for one item of the product';
comment on column order_items.order_id is e'the order these products belong to';
comment on column order_items.quantity is e'how many items of this product the customer purchased';
comment on column order_items.line_item_id is e'an incrementing number, starting at one for each order';
comment on column order_items.product_id is e'which item was purchased';
