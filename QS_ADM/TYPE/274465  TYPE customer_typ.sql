set search_path = qs_adm;
create type customer_typ as (
customer_id     bigint,
        name            varchar(100),
        street          varchar(100),
        city            varchar(30),
        state           varchar(2),
        zip             bigint,
        country         varchar(100)
);


