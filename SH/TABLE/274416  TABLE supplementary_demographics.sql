set search_path = sh;
create table supplementary_demographics (
	cust_id bigint not null,
	education varchar(21),
	occupation varchar(21),
	household_size varchar(21),
	yrs_residence bigint,
	affinity_card bigint,
	bulk_pack_diskettes bigint,
	flat_panel_monitor bigint,
	home_theater_package bigint,
	bookkeeping_application bigint,
	printer_supplies bigint,
	y_box_games bigint,
	os_doc_set_kanji bigint,
	comments varchar(4000)
) ;
