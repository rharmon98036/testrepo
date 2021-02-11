set search_path = co;
create or replace view store_orders (total, store_name, address, latitude, longitude, order_status, order_count, total_sales) as select  case
           grouping_id( store_name, order_status )
           when 1 then 'store total'
           when 2 then 'status total'
           when 3 then 'grand total'
         end total,
         s.store_name,
         coalesce( s.web_address, s.physical_address ) address,
         s.latitude, s.longitude,
         o.order_status,
         count( distinct o.order_id ) order_count,
         sum( oi.quantity * oi.unit_price ) total_sales
   from   stores s
  join   orders o
  on     s.store_id = o.store_id
  join   order_items oi
  on     o.order_id = oi.order_id
  group  by grouping sets (
    ( s.store_name, coalesce( s.web_address, s.physical_address ), s.latitude, s.longitude ),
    ( s.store_name, coalesce( s.web_address, s.physical_address ), s.latitude, s.longitude, o.order_status ),
    o.order_status,
    ()
  );

comment on view store_orders  is e'a summary of what was purchased at each location, including summaries each store, order status and overall total';

comment on column store_orders.address is e'the physical or virtual location of this store';
comment on column store_orders.latitude is e'the north-south position of a physical store';
comment on column store_orders.longitude is e'the east-west position of a physical store';
comment on column store_orders.order_count is e'the total number of orders placed';
comment on column store_orders.order_status is e'the current state of this order';
comment on column store_orders.store_name is e'what the store is called';
comment on column store_orders.total is e'indicates what type of total is displayed, including store, status, or grand totals';
comment on column store_orders.total_sales is e'the total value of orders placed';
