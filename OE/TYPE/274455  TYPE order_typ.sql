set search_path = oe;
create type order_typ as (
order_id           bigint
    , order_mode         varchar(8)
    , customer_ref  ref  customer_typ
    , order_status       smallint
    , order_total        double precision
    , sales_rep_id       numeric
    , order_item_list    order_item_list_typ
    
);

