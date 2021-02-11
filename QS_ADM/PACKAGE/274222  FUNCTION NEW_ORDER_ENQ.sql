set search_path = qs_adm;
create or replace function qs_applications.new_order_enq (simpleorder simpleorder_typ, customer customer_typ, items orderitemlist_vartyp) returns void as $body$
declare


    qs_enq_order_data        qs_adm.order_typ;
    enqopt                   dbms_aq.enqueue_options_t;
    msgprop                  dbms_aq.message_properties_t;
    enq_msgid                bytea;
    itemlist		     orderitemlist_vartyp;
    item		     orderitem_typ;


begin

    -- form the book items object from items
    msgprop.correlation := simpleorder.ordertype;

    qs_enq_order_data := qs_adm.order_typ(
				simpleorder.orderno,
				simpleorder.status,
				simpleorder.ordertype,
				simpleorder.orderregion,
				customer,
				simpleorder.paymentmethod,
				itemlist, simpleorder.total);

    -- put the shipping priority into the message property
    -- before enqueuing the message.
    if (simpleorder.ordertype = 'rush') then
	msgprop.priority := 1;
    else
	msgprop.priority := 2;
    end if;


    dbms_aq.enqueue('qs.qs_neworders_que', enqopt, msgprop,
		    qs_enq_order_data, enq_msgid);

--    dbms_output.put_line('one order enqueued successfully');
    commit;


end;

$body$
language plpgsql
 stable;
-- revoke all on function qs_applications.new_order_enq (simpleorder simpleorder_typ, customer customer_typ, items orderitemlist_vartyp) from public;

