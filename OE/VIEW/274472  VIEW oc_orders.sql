set search_path = oe;
create or replace view oc_orders (order_id, order_mode, customer_ref, order_status, order_total, sales_rep_id, order_item_list) as select  o.order_id, o.order_mode,make_ref(oc_customers,o.customer_id),
        o.order_status,o.order_total,o.sales_rep_id,
       cast(multiset(select l.order_id,l.line_item_id,l.unit_price,l.quantity,
                       make_ref(oc_product_information,l.product_id)
                      from order_items l
                     where o.order_id = l.order_id)
            as order_item_list_typ)
    from orders o;

