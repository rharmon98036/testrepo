set search_path = oe;
create or replace type leaf_category_typ
                                       
 under category_typ
    (
    product_ref_list    product_ref_list_typ
    , overriding member function  category_describe return varchar2
    );type body leaf_category_typ as
    overriding member function  category_describe return varchar2 is
    begin
       return  'leaf_category_typ';
    end;
   end;
-- unsupported, please edit to match postgresql syntax
