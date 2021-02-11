set search_path = oe;
alter table orders add constraint orders_sales_rep_fk foreign key (sales_rep_id) references hr.employees(employee_id) on delete set null not deferrable initially immediate;
