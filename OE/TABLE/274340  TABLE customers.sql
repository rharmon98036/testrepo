set search_path = oe;
create table customers (
	customer_id integer not null,
	cust_first_name varchar(20) not null,
	cust_last_name varchar(20) not null,
	cust_address cust_address_typ,
	phone_numbers phone_list_typ,
	nls_language varchar(3),
	nls_territory varchar(30),
	credit_limit double precision,
	cust_email varchar(40),
	account_mgr_id integer,
	cust_geo_location public.geometry(point,4326),
	date_of_birth timestamp,
	marital_status varchar(20),
	gender varchar(1),
	income_level varchar(20)
) ;
comment on table customers is e'contains customers data either entered by an employee or by the customer
him/herself over the web.';
comment on column customers.cust_address is e'object column of type address_typ.';
comment on column customers.customer_id is e'primary key column.';
comment on column customers.phone_numbers is e'varray column of type phone_list_typ';
comment on column customers.credit_limit is e'check constraint.';
comment on column customers.cust_first_name is e'not null constraint.';
comment on column customers.account_mgr_id is e'references hr.employees.employee_id.';
comment on column customers.cust_geo_location is e'sdo (spatial) column.';
comment on column customers.cust_last_name is e'not null constraint.';
