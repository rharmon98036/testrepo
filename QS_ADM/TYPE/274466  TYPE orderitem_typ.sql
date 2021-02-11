set search_path = qs_adm;
create type orderitem_typ as (
line_item_id	bigint,
        quantity        bigint,
	unit_price	bigint,
	product_id	bigint,
        subtotal        bigint
);


