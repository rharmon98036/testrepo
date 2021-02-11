set search_path = sh;
create foreign table sales_transactions_ext (
	prod_id bigint,
	cust_id bigint,
	time_id timestamp,
	channel_id bigint,
	promo_id bigint,
	quantity_sold bigint,
	amount_sold double precision,
	unit_cost double precision,
	unit_price double precision
) server data_file_dir options(filename 'disabled', format 'csv', delimiter ',');

