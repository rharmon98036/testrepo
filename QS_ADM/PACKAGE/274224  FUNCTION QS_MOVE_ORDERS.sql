set search_path = qs_adm;
create or replace function qs_applications.qs_move_orders () returns void as $body$
declare


    new_orders	 	     boolean := true;
    dopt                     dbms_aq.dequeue_options_t;
    enqopt                   dbms_aq.enqueue_options_t;
    mprop                    dbms_aq.message_properties_t;
    qs_deq_order_data        qs_adm.order_typ;
    deq_msgid                bytea;
    no_messages              exception;



begin

    --dopt.wait := dbms_aq.no_wait;
    dopt.navigation := dbms_aq.first_message;

    --while (new_orders) loop
    loop
	begin
	    dbms_aq.dequeue(
		queue_name => 'qs.qs_neworders_que',
		dequeue_options => dopt,
		message_properties => mprop,
		payload => qs_deq_order_data,
		msgid => deq_msgid);

	    -- assign the shipping region
	    if (qs_deq_order_data.customer.country not in ('usa', 'us')) then
--dbms_output.put_line('international shipment ... ');
		qs_deq_order_data.orderregion := 'international';
	    else
		if (qs_deq_order_data.customer.state in ('tx', 'texas',
						    'ca', 'california',
						    'nv', 'nevada')) then

		    qs_deq_order_data.orderregion := 'western';
--dbms_output.put_line('western shipment');
		else
		    qs_deq_order_data.orderregion := 'eastern';
--dbms_output.put_line('eastern shipment');
		end if;
--		dbms_output.put_line('dequeuing a message ...');
--		dbms_output.put_line('region is ' || qs_deq_order_data.orderregion);
	    end if;


            -- change the order status to booked
            qs_deq_order_data.status := 'booked';

	    -- enqueue into booked orders queue
	    dbms_aq.enqueue(
		queue_name => 'qs.qs_bookedorders_que',
		enqueue_options => enqopt,
		message_properties => mprop,
		payload => qs_deq_order_data,
		msgid => deq_msgid);

	    commit;

    --        dopt.navigation := dbms_aq.next_message;
	exception
            when no_messages then
                 new_orders := false;
	end;
    end loop;


end;

$body$
language plpgsql
;
-- revoke all on function qs_applications.qs_move_orders () from public;

