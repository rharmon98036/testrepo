set search_path = oe;
create or replace view oc_customers (customer_id, cust_first_name, cust_last_name, cust_address, phone_numbers, nls_language, nls_territory, credit_limit, cust_email, cust_orders) as select  c.customer_id, c.cust_first_name, c.cust_last_name, c.cust_address,
           c.phone_numbers,c.nls_language,c.nls_territory,c.credit_limit,
           c.cust_email,
           cast(multiset(select o.order_id, o.order_mode,
                               make_ref(oc_customers,o.customer_id),
                               o.order_status,
                               o.order_total,o.sales_rep_id,
                               cast(multiset(select l.order_id,l.line_item_id,
                                                    l.unit_price,l.quantity,
                                             make_ref(oc_product_information,
                                                      l.product_id)
                                              from order_items l
                                             where o.order_id = l.order_id)
                                    as order_item_list_typ)
                         from orders o
                         where c.customer_id = o.customer_id)
                as order_list_typ)
     from customers c;

