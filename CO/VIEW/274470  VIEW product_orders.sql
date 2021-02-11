set search_path = co;
create or replace view product_orders (product_name, order_status, total_sales, order_count) as select  p.product_name, o.order_status,
         sum( oi.quantity * oi.unit_price ) total_sales,
         count(*) order_count
   from   orders o
  join   order_items oi
  on     o.order_id = oi.order_id
  join   customers c
  on     o.customer_id = c.customer_id
  join   products p
  on     oi.product_id = p.product_id
  group  by p.product_name, o.order_status;

comment on view product_orders  is e'a summary of the state of the orders placed for each product';

comment on column product_orders.order_count is e'the total number of orders placed';
comment on column product_orders.order_status is e'the current state of these order';
comment on column product_orders.product_name is e'what this product is called';
comment on column product_orders.total_sales is e'the total value of orders placed';
