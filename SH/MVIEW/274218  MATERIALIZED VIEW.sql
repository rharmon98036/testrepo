set search_path = sh;
create materialized view fweek_pscat_sales_mv as
select   t.week_ending_day
  ,        p.prod_subcategory
  ,        sum(s.amount_sold) as dollars
  ,        s.channel_id
  ,        s.promo_id
  from     sales s
  ,        times t
  ,        products p
  where    s.time_id = t.time_id
  and      s.prod_id = p.prod_id
  group by t.week_ending_day
  ,        p.prod_subcategory
  ,        s.channel_id
  ,        s.promo_id;
