set search_path = qs_adm;
create or replace function qs_applications.shipping_app ( consumer text) returns void as $body$
declare


    deq_msgid                bytea;
    dopt                     dbms_aq.dequeue_options_t;
    enqopt                   dbms_aq.enqueue_options_t;
    mprop                    dbms_aq.message_properties_t;
    deq_order_data           qs_adm.order_typ;
    qname                    varchar(30);
    shipqname                varchar(30);
    bookqname                varchar(30);
    backqname                varchar(30);
    notqname                 varchar(30);
    no_messages              exception;

    new_orders 		     boolean := true;
    is_backed 		     boolean := false;
    is_avail		     numeric;
    region                   varchar(30);
    notify                   boolean := false;
    not_enqopt               dbms_aq.enqueue_options_t;
    not_mprop                dbms_aq.message_properties_t;
    not_msg_data             bytea;
    not_msgid                bytea;
    ship_orderno             bigint;


begin


    dopt.consumer_name := consumer;
    --dopt.wait := dbms_aq.no_wait;
    dopt.navigation := dbms_aq.first_message;

    if (consumer = 'west_shipping') then
	    qname     := 'qs_ws.qs_ws_bookedorders_que';
	    shipqname := 'qs_ws.qs_ws_shippedorders_que';
	    backqname := 'qs_ws.qs_ws_backorders_que';
            notqname  := 'qs_ws.qs_ws_notification_que';
            region := 'western';
            notify := true;
    elsif (consumer = 'east_shipping') then
	    qname     := 'qs_es.qs_es_bookedorders_que';
	    shipqname := 'qs_es.qs_es_shippedorders_que';
	    backqname := 'qs_es.qs_es_backorders_que';
            notqname  := 'qs_es.qs_es_notification_que';
            region := 'eastern';
            notify := true;
    else
	    qname     := 'qs_os.qs_os_bookedorders_que';
	    shipqname := 'qs_os.qs_os_shippedorders_que';
	    backqname := 'qs_os.qs_os_backorders_que';
            region := 'international';
    end if;

    --while (new_orders) loop
    loop
	begin
            is_backed := false;
	    dbms_aq.dequeue(
		queue_name => qname,
		dequeue_options => dopt,
		message_properties => mprop,
		payload => deq_order_data,
		msgid => deq_msgid);

            ship_orderno := deq_order_data.orderno;
            if (notify = true) then

              not_mprop.correlation := ship_orderno::varchar;
              not_msg_data := hextoraw(ship_orderno::varchar);
  	      dbms_aq.enqueue(
  		 queue_name => notqname,
  		 enqueue_options => not_enqopt,
  		 message_properties => not_mprop,
  		 payload => not_msg_data,
  		 msgid => not_msgid);

            end if;

            deq_order_data.orderregion := region;

	    -- check if all books in an order are availabe
	    if (is_backed = false) then
		-- change the status of the order to shipped order
		deq_order_data.status := 'shipped';
		dbms_aq.enqueue(
		    queue_name => shipqname,
		    enqueue_options => enqopt,
		    message_properties => mprop,
		    payload => deq_order_data,
		    msgid => deq_msgid);
	    end if;

	    commit;
	exception
	    when no_messages then
		new_orders := false;
	end;
    end loop;
end;

$body$
language plpgsql
;
-- revoke all on function qs_applications.shipping_app ( consumer text) from public;

