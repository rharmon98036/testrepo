set search_path = oe;
create or replace function trigger_fct_orders_items_trg() returns trigger as $body$
declare
    prod  product_information_typ;
begin
    select deref(new.product_ref) into strict prod;
    insert into order_items values (prod.product_id, new.order_id,
                                    new.line_item_id, new.unit_price,
                                    new.quantity);
return new;
end
$body$
 language 'plpgsql';

