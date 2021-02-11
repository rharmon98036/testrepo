set search_path = oe;
create type cust_address_typ as (
street_address     varchar(40)
    , postal_code        varchar(10)
    , city               varchar(30)
    , state_province     varchar(10)
    , country_id         char(2)
    
);


