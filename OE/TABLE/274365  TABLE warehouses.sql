set search_path = oe;
create table warehouses (
	warehouse_id smallint not null,
	warehouse_spec xml,
	warehouse_name varchar(35),
	location_id smallint,
	wh_geo_location public.geometry(point,4326)
) ;
comment on table warehouses is e'warehouse data unspecific to any industry.';
comment on column warehouses.warehouse_id is e'primary key column.';
comment on column warehouses.wh_geo_location is e'sdo (spatial) column.';
comment on column warehouses.location_id is e'primary key column, references hr.locations.location_id.';
