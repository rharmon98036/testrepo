set search_path = oe;
create table orders (
	order_id bigint not null,
	order_date timestamp with time zone not null,
	order_mode varchar(8),
	customer_id integer not null,
	order_status smallint,
	order_total double precision,
	sales_rep_id integer,
	promotion_id integer
) ;
comment on table orders is e'contains orders entered by a salesperson as well as over the web.';
comment on column orders.order_mode is e'check constraint.';
comment on column orders.promotion_id is e'sales promotion id. used in sh schema';
comment on column orders.order_date is e'timestamp with local time zone column, not null constraint.';
comment on column orders.order_id is e'primary key column.';
comment on column orders.order_status is e'0: not fully entered, 1: entered, 2: canceled - bad credit, -
3: canceled - by customer, 4: shipped - whole order, -
5: shipped - replacement items, 6: shipped - backlog on items, -
7: shipped - special delivery, 8: shipped - billed, 9: shipped - payment plan,-
10: shipped - paid';
comment on column orders.order_total is e'check constraint.';
comment on column orders.sales_rep_id is e'references hr.employees.employee_id.';
