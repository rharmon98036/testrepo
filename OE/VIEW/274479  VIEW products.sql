set search_path = oe;
create or replace view products (product_id, language_id, product_name, category_id, product_description, weight_class, warranty_period, supplier_id, product_status, list_price, min_price, catalog_url) as select  i.product_id
,      d.language_id
,      case when d.language_id is not null
            then d.translated_name
            else translate(i.product_name using nchar_cs)
       end    as product_name
,      i.category_id
,      case when d.language_id is not null
            then d.translated_description
            else translate(i.product_description using nchar_cs)
       end    as product_description
,      i.weight_class
,      i.warranty_period
,      i.supplier_id
,      i.product_status
,      i.list_price
,      i.min_price
,      i.catalog_url
 from product_information i
left outer join product_descriptions d on (i.product_id = d.product_id and sys_context('userenv','lang') = d.language_id);

comment on view products  is e'this view joins product_information and product_descriptions, using nls
settings to pick the appropriate language-specific product description.';

