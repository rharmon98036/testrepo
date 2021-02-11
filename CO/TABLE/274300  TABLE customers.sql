set search_path = co;
create table customers (
	customer_id bigint generated by default as identity (start with 393 increment by 1 ),
	email_address varchar(255) not null,
	full_name varchar(255) not null
) ;
comment on table customers is e'details of the people placing orders';
comment on column customers.full_name is e'what this customer is called';
comment on column customers.customer_id is e'auto-incrementing primary key';
comment on column customers.email_address is e'the email address the person uses to access the account';
--rob was here
