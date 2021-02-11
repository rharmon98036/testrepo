set search_path = oe;
create table customer_typ (
customer_id        numeric
    , cust_first_name    varchar(20)
    , cust_last_name     varchar(20)
    , cust_address       cust_address_typ
    , phone_numbers      phone_list_typ
    , nls_language       varchar(3)
    , nls_territory      varchar(40)
    , credit_limit       double precision
    , cust_email         varchar(40)
    , cust_orders        order_list_typ
    
);


