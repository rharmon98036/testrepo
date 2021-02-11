set search_path = qs_adm;
create or replace function qs_applications.billing_app () returns void as $body$
declare

    new_orders               boolean := true;
    dopt                     dbms_aq.dequeue_options_t;
    enqopt                   dbms_aq.enqueue_options_t;
    mprop                    dbms_aq.message_properties_t;
    deq_order_data        qs_adm.order_typ;
    deq_msgid                bytea;
    no_messages              exception;



begin

    --dopt.wait := dbms_aq.no_wait;
    dopt.navigation := dbms_aq.first_message;
    dopt.consumer_name := 'customer_billing';

    --while (new_orders) loop
    loop
        begin
            dbms_aq.dequeue(
                queue_name => 'qs_cbadm.qs_cbadm_shippedorders_que',
                dequeue_options => dopt,
                message_properties => mprop,
                payload => deq_order_data,
                msgid => deq_msgid);


            -- change the order status to billed
            deq_order_data.status := 'billed';


            -- enqueue into booked orders queue
            dbms_aq.enqueue(
                queue_name => 'qs_cbadm.qs_cbadm_billedorders_que',
                enqueue_options => enqopt,
                message_properties => mprop,
                payload => deq_order_data,
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
-- revoke all on function qs_applications.billing_app () from public;

