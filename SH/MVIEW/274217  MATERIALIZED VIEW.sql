set search_path = sh;
create materialized view cal_month_sales_mv as
select   t.calendar_month_desc
  ,        sum(s.amount_sold) as dollars
  from     sales s
  ,        times t
  where    s.time_id = t.time_id
  group by t.calendar_month_desc;


