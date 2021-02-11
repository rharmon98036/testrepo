set search_path = oe;
create type inventory_typ as (
product_id          numeric
    , warehouse           warehouse_typ
    , quantity_on_hand    numeric
    
);

