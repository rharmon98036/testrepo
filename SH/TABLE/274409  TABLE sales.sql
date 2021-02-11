set search_path = sh;
create table sales (
	prod_id bigint not null,
	cust_id bigint not null,
	time_id timestamp not null,
	channel_id bigint not null,
	promo_id bigint not null,
	quantity_sold double precision not null,
	amount_sold double precision not null
) partition by range (time_id) ;
comment on table sales is e'facts table, without a primary key; all rows are uniquely identified by the combination of all foreign keys';
comment on column sales.time_id is e'fk to the times dimension table';
comment on column sales.quantity_sold is e'product quantity sold with the transaction';
comment on column sales.prod_id is e'fk to the products dimension table';
comment on column sales.channel_id is e'fk to the channels dimension table';
comment on column sales.promo_id is e'promotion identifier, without fk constraint (intentionally) to show outer join optimization';
comment on column sales.amount_sold is e'invoiced amount to the customer';
comment on column sales.cust_id is e'fk to the customers dimension table';
