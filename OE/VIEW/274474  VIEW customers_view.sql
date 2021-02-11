set search_path = oe;
create or replace view customers_view (customer_id, cust_first_name, cust_last_name, street_address, postal_code, city, state_province, country_id, country_name, region_id, nls_language, nls_territory, credit_limit, cust_email, primary_phone_number, phone_number_2, phone_number_3, phone_number_4, phone_number_5, account_mgr_id, location_gtype, location_srid, location_x, location_y, location_z) as select 
  c.customer_id,
  c.cust_first_name,
  c.cust_last_name,
  c.cust_address.street_address street_address,
  c.cust_address.postal_code postal_code,
  c.cust_address.city city,
  c.cust_address.state_province state_province,
  co.country_id,
  co.country_name,
  co.region_id,
  c.nls_language,
  c.nls_territory,
  c.credit_limit,
  c.cust_email,
  substr(get_phone_number_f(1,phone_numbers),1,25) primary_phone_number,
  substr(get_phone_number_f(2,phone_numbers),1,25) phone_number_2,
  substr(get_phone_number_f(3,phone_numbers),1,25) phone_number_3,
  substr(get_phone_number_f(4,phone_numbers),1,25) phone_number_4,
  substr(get_phone_number_f(5,phone_numbers),1,25) phone_number_5,
  c.account_mgr_id,
  c.cust_geo_location.sdo_gtype location_gtype,
  c.cust_geo_location.sdo_srid location_srid,
  c.cust_geo_location.sdo_point.x location_x,
  c.cust_geo_location.sdo_point.y location_y,
  c.cust_geo_location.sdo_point.z location_z
 from customers c
left outer join countries co on (c.cust_address.country_id = co.country_id);

