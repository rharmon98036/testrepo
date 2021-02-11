set search_path = oe;
create trigger orders_trg
	instead of insert on oc_orders for each row
	execute procedure trigger_fct_orders_trg();

drop trigger if exists "purchaseorder$xd" on purchaseorder cascade;
