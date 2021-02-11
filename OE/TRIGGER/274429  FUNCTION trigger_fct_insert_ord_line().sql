set search_path = oe;
create or replace function trigger_fct_insert_ord_line() returns trigger as $body$
declare
    new_line bigint;
  begin
    select (coalesce(max(line_item_id),0)+1) into strict new_line
      from order_items
      where order_id = new.order_id;
    new.line_item_id := new_line;
  return new;
end
$body$
 language 'plpgsql';

