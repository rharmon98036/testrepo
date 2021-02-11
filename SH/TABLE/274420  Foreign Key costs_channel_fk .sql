set search_path = sh;
alter table costs add constraint costs_channel_fk foreign key (channel_id) references channels(channel_id) on delete no action not deferrable initially immediate;

