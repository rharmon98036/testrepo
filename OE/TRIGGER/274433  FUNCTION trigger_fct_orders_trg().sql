set search_path = oe;
create or replace function trigger_fct_orders_trg() returns trigger as $body$
begin
   insert into orders(order_id, order_mode, order_total,
                       sales_rep_id, order_status)
               values (new.order_id, new.order_mode,
                       new.order_total, new.sales_rep_id,
                       new.order_status);
return new;
end
$body$
 language 'plpgsql';

