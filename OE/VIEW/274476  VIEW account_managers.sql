set search_path = oe;
create or replace view account_managers (acct_mgr, region, country, province, num_customers) as select 		c.account_mgr_id 		acct_mgr,
		cr.region_id 			region,
		c.cust_address.country_id 	country,
		c.cust_address.state_province 	province,
		count(*) 			num_customers
 from		customers c, countries cr
where		c.cust_address.country_id = cr.country_id
group by rollup(c.account_mgr_id,
		 cr.region_id,
		 c.cust_address.country_id,
		 c.cust_address.state_province);

