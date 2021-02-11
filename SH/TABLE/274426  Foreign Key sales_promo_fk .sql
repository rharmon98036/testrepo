set search_path = sh;
alter table sales add constraint sales_promo_fk foreign key (promo_id) references promotions(promo_id) on delete no action not deferrable initially immediate;

