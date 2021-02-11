set search_path = oe;
create trigger orders_items_trg
	instead of insert on oc_orders for each row
	execute procedure trigger_fct_orders_items_trg();

drop trigger if exists orders_trg on oc_orders cascade;
