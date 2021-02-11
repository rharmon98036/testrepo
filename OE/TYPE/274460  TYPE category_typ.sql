set search_path = oe;
create or replace type category_typ
                                       
 as object
    ( category_name           varchar2(50)
    , category_description    varchar2(1000)
    , category_id             number(2)
    , not instantiable
      member function category_describe return varchar2
      )
  not instantiable not final
 alter type category_typ
 add attribute (parent_category_id number(2)) cascade
-- unsupported, please edit to match postgresql syntax
