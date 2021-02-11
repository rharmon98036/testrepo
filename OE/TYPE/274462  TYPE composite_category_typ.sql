set search_path = oe;
create or replace type composite_category_typ
                                       
 under category_typ
      (
    subcategory_ref_list subcategory_ref_list_typ
      , overriding member function  category_describe return varchar2
      )
  not final;type body composite_category_typ  as
    overriding member function category_describe return varchar2 is
    begin
      return 'composite_category_typ';
    end;
   end;
-- unsupported, please edit to match postgresql syntax
