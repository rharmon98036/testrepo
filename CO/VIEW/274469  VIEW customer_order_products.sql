set search_path = co;
create or replace view customer_order_products (order_id, order_datetime, order_status, customer_id, email_address, full_name, order_total, items) as select  o.order_id, o.order_datetime, o.order_status,
         c.customer_id, c.email_address, c.full_name,
         sum( oi.quantity * oi.unit_price ) order_total,
         listagg(
           p.product_name, ', '
           on overflow truncate '...' with count
         ) within group( order by oi.line_item_id ) items
   from   orders o
  join   order_items oi
  on     o.order_id = oi.order_id
  join   customers c
  on     o.customer_id = c.customer_id
  join   products p
  on     oi.product_id = p.product_id
  group  by o.order_id, o.order_datetime, o.order_status,
         c.customer_id, c.email_address, c.full_name;

comment on view customer_order_products  is e'a summary of who placed each order and what they bought';

comment on column customer_order_products.customer_id is e'the primary key of the customer';
comment on column customer_order_products.email_address is e'the email address the person uses to access the account';
comment on column customer_order_products.full_name is e'what this customer is called';
comment on column customer_order_products.items is e'a comma-separated list naming the products in this order';
comment on column customer_order_products.order_datetime is e'the date and time the order was placed';
comment on column customer_order_products.order_id is e'the primary key of the order';
comment on column customer_order_products.order_status is e'the current state of this order';
comment on column customer_order_products.order_total is e'the total amount the customer paid for the order';
