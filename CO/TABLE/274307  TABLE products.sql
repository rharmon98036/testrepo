set search_path = co;
create table products (
	product_id bigint generated by default as identity (start with 47 increment by 1 ),
	product_name varchar(255) not null,
	unit_price double precision,
	product_details bytea,
	product_image bytea,
	image_mime_type varchar(512),
	image_filename varchar(512),
	image_charset varchar(512),
	image_last_updated timestamp
) ;
comment on table products is e'details of goods that customers can purchase';
comment on column products.image_charset is e'the character set used to encode the image';
comment on column products.image_last_updated is e'the date the image was last changed';
comment on column products.unit_price is e'the monetary value of one item of this product';
comment on column products.image_filename is e'the name of the file loaded in the image column';
comment on column products.product_id is e'auto-incrementing primary key';
comment on column products.product_name is e'what a product is called';
comment on column products.product_image is e'a picture of the product';
comment on column products.image_mime_type is e'the mime-type of the product image';
comment on column products.product_details is e'further details of the product stored in json format';
alter table products add primary key (product_id);
--alter table products add constraint products_json_c check ( product_details is json);
--rob was here

