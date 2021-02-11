set search_path = sh;
create table promotions (
	promo_id integer not null,
	promo_name varchar(30) not null,
	promo_subcategory varchar(30) not null,
	promo_subcategory_id bigint not null,
	promo_category varchar(30) not null,
	promo_category_id bigint not null,
	promo_cost double precision not null,
	promo_begin_date timestamp not null,
	promo_end_date timestamp not null,
	promo_total varchar(15) not null,
	promo_total_id bigint not null
) ;
comment on table promotions is e'dimension table without a pk-fk relationship with the facts table, to show outer join functionality';
comment on column promotions.promo_category is e'promotion category';
comment on column promotions.promo_subcategory is e'enables to investigate promotion hierarchies';
comment on column promotions.promo_id is e'primary key column';
comment on column promotions.promo_cost is e'promotion cost, to do promotion effect calculations';
comment on column promotions.promo_begin_date is e'promotion begin day';
comment on column promotions.promo_end_date is e'promotion end day';
comment on column promotions.promo_name is e'promotion description';
alter table promotions add primary key (promo_id);

