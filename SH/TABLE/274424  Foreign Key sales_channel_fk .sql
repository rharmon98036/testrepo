set search_path = sh;
alter table sales add constraint sales_channel_fk foreign key (channel_id) references channels(channel_id) on delete no action not deferrable initially immediate;

