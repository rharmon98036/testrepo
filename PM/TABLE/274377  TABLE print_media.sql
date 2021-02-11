set search_path = pm;
create table print_media (
	product_id integer not null,
	ad_id integer not null,
	ad_composite bytea,
	ad_sourcetext text,
	ad_finaltext text,
	ad_fltextn text,
	ad_textdocs_ntab textdoc_tab,
	ad_photo bytea,
	ad_graphic bytea,
	ad_header adheader_typ
) ;
alter table print_media add primary key (product_id,ad_id);
