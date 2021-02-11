set search_path = oe;
create table promotions (
	promo_id integer not null,
	promo_name varchar(20)
) ;
alter table promotions add primary key (promo_id);
