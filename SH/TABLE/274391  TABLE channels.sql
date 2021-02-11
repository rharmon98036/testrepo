set search_path = sh;
create table channels (
	channel_id bigint not null,
	channel_desc varchar(20) not null,
	channel_class varchar(20) not null,
	channel_class_id bigint not null,
	channel_total varchar(13) not null,
	channel_total_id bigint not null
) ;
comment on table channels is e'small dimension table';
comment on column channels.channel_desc is e'e.g. telesales, internet, catalog';
comment on column channels.channel_class is e'e.g. direct, indirect';
comment on column channels.channel_id is e'primary key column';
alter table channels add primary key (channel_id);

