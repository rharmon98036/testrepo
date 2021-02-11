set search_path = qs_adm;
create type order_typ as (
orderno         bigint,
        status          varchar(30),
        ordertype       varchar(30),
        orderregion     varchar(30),
        customer        customer_typ,
        paymentmethod   varchar(30),
        items           orderitemlist_vartyp,
        total           bigint
);


