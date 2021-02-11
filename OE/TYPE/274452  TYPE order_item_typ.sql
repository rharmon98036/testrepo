set search_path = oe;
create type order_item_typ as (
order_id           bigint
    , line_item_id       smallint
    , unit_price         double precision
    , quantity           numeric
    , product_ref  ref   product_information_typ
    
);

