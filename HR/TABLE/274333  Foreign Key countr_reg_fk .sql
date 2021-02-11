set search_path = hr;
alter table countries add constraint countr_reg_fk foreign key (region_id) references regions(region_id) on delete no action not deferrable initially immediate;
