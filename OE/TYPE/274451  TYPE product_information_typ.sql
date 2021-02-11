set search_path = oe;
create type product_information_typ as (
product_id           numeric
    , product_name         varchar(50)
    , product_description  varchar(2000)
    , category_id          smallint
    , weight_class         smallint
    , warranty_period      interval 
    , supplier_id          numeric
    , product_status       varchar(20)
    , list_price           double precision
    , min_price            double precision
    , catalog_url          varchar(50)
    , inventory_list       inventory_list_typ
    
);


