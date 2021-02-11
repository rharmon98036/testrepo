set search_path = pm;
create type adheader_typ as (
header_name        varchar(256)
    , creation_date      timestamp
    , header_text        varchar(1024)
    , logo               bytea
    
);


