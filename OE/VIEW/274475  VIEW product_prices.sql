set search_path = oe;
create or replace view product_prices (category_id, "#_of_products", low_price, high_price) as select  category_id
,      count(*)        as #_of_products
,      min(list_price) as low_price
,      max(list_price) as high_price
 from   product_information
group by category_id;

