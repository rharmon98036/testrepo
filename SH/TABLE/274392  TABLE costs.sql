set search_path = sh;
create table costs (
	prod_id bigint not null,
	time_id timestamp not null,
	promo_id bigint not null,
	channel_id bigint not null,
	unit_cost double precision not null,
	unit_price double precision not null
) partition by range (time_id) ;
