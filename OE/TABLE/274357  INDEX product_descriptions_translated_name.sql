set search_path = oe;
create index product_descriptions_translated_name on product_descriptions (translated_name);
alter table product_descriptions add primary key (product_id,language_id);

