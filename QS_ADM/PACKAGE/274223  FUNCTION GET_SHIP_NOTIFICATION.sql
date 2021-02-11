set search_path = qs_adm;
create or replace function qs_applications.get_ship_notification ( orderid bigint, status out bigint, tracking_id out text) as $body$
declare

   deqopt           dbms_aq.dequeue_options_t;
   mprop            dbms_aq.message_properties_t;
   deq_msgid        bytea;
   msg_data         bytea;
   no_messages      exception;



begin
   status := 0;

   deqopt.navigation := dbms_aq.first_message;
   deqopt.wait := 10;
   deqopt.correlation := orderid::varchar;
   deqopt.consumer_name := 'order_entry';


   begin
     dbms_aq.dequeue(
                queue_name => 'qs.qs_notification_que',
                dequeue_options => deqopt,
                message_properties => mprop,
                payload => msg_data,
                msgid => deq_msgid);
     status := 1;
     tracking_id := rawtohex(deq_msgid);
     commit;
   exception
     when no_messages then
        status := 0;
     when others then
        raise;
   end;

end;

$body$
language plpgsql
;
-- revoke all on function qs_applications.get_ship_notification ( orderid bigint, status out bigint, tracking_id out text) from public;

