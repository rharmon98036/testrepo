set search_path = sh;
create table customers (
	cust_id bigint not null,
	cust_first_name varchar(20) not null,
	cust_last_name varchar(40) not null,
	cust_gender char(1) not null,
	cust_year_of_birth smallint not null,
	cust_marital_status varchar(20),
	cust_street_address varchar(40) not null,
	cust_postal_code varchar(10) not null,
	cust_city varchar(30) not null,
	cust_city_id bigint not null,
	cust_state_province varchar(40) not null,
	cust_state_province_id bigint not null,
	country_id bigint not null,
	cust_main_phone_number varchar(25) not null,
	cust_income_level varchar(30),
	cust_credit_limit bigint,
	cust_email varchar(50),
	cust_total varchar(14) not null,
	cust_total_id bigint not null,
	cust_src_id bigint,
	cust_eff_from timestamp,
	cust_eff_to timestamp,
	cust_valid varchar(1)
) ;
comment on table customers is e'dimension table';
comment on column customers.cust_last_name is e'last name of the customer';
comment on column customers.cust_first_name is e'first name of the customer';
comment on column customers.cust_credit_limit is e'customer credit limit';
comment on column customers.cust_gender is e'gender; low cardinality attribute';
comment on column customers.cust_street_address is e'customer street address';
comment on column customers.cust_state_province is e'customer geography: state or province';
comment on column customers.cust_income_level is e'customer income level';
comment on column customers.cust_marital_status is e'customer marital status; low cardinality attribute';
comment on column customers.cust_main_phone_number is e'customer main phone number';
comment on column customers.cust_year_of_birth is e'customer year of birth';
comment on column customers.cust_postal_code is e'postal code of the customer';
comment on column customers.country_id is e'foreign key to the countries table (snowflake)';
comment on column customers.cust_email is e'customer email id';
comment on column customers.cust_id is e'primary key';
comment on column customers.cust_city is e'city where the customer lives';
