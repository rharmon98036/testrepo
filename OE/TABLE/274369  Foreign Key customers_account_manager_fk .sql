set search_path = oe;
alter table customers add constraint customers_account_manager_fk foreign key (account_mgr_id) references hr.employees(employee_id) on delete set null not deferrable initially immediate;
