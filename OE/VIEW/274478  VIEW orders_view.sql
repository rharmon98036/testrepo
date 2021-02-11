set search_path = oe;
create or replace view orders_view (order_id, order_date, order_mode, customer_id, order_status, order_total, sales_rep_id, promotion_id) as select  order_id,
  to_date(to_char(order_date,'dd-mon-yy hh:mi:ss'),'dd-mon-yy hh:mi:ss')    order_date,
order_mode,
customer_id,
order_status,
order_total,
sales_rep_id,
promotion_id
 from orders;

