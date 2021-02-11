set search_path = oe;
create index product_information_supplier_id on product_information (supplier_id);
alter table product_information add primary key (product_id);
alter table product_information add constraint product_status_lov check (product_status in ('orderable'
                                                  ,'planned'
                                                  ,'under development'
                                                  ,'obsolete')
);
