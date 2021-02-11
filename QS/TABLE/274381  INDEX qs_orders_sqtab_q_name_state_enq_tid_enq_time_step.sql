set search_path = qs;
create index qs_orders_sqtab_q_name_state_enq_tid_enq_time_step_no_chain_no_ on qs_orders_sqtab (q_name, state, enq_tid, enq_time, step_no, chain_no, local_order_no);
