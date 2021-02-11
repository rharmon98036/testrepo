set search_path = oe;
create trigger insert_ord_line
	before insert on order_items for each row
	execute procedure trigger_fct_insert_ord_line();

drop trigger if exists orders_items_trg on oc_orders cascade;
