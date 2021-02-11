set search_path = ix;
create table orders_queuetable (
	q_name varchar(128),
	msgid bytea not null,
	corrid varchar(128),
	priority bigint,
	state bigint,
	delay timestamp,
	expiration bigint,
	time_manager_info timestamp,
	local_order_no bigint,
	chain_no bigint,
	cscn bigint,
	dscn bigint,
	enq_time timestamp,
	enq_uid varchar(128),
	enq_tid varchar(30),
	deq_time timestamp,
	deq_uid varchar(128),
	deq_tid varchar(30),
	retry_count bigint,
	exception_qschema varchar(128),
	exception_queue varchar(128),
	step_no bigint,
	recipient_key bigint,
	dequeue_msgid bytea,
	sender_name varchar(128),
	sender_address varchar(1024),
	sender_protocol bigint,
	user_data order_event_typ,
	user_prop bytea
) ;
alter table orders_queuetable add primary key (msgid);

