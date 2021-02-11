set search_path = sh;
create table times (
	time_id timestamp not null,
	day_name varchar(9) not null,
	day_number_in_week smallint not null,
	day_number_in_month smallint not null,
	calendar_week_number smallint not null,
	fiscal_week_number smallint not null,
	week_ending_day timestamp not null,
	week_ending_day_id bigint not null,
	calendar_month_number smallint not null,
	fiscal_month_number smallint not null,
	calendar_month_desc varchar(8) not null,
	calendar_month_id bigint not null,
	fiscal_month_desc varchar(8) not null,
	fiscal_month_id bigint not null,
	days_in_cal_month bigint not null,
	days_in_fis_month bigint not null,
	end_of_cal_month timestamp not null,
	end_of_fis_month timestamp not null,
	calendar_month_name varchar(9) not null,
	fiscal_month_name varchar(9) not null,
	calendar_quarter_desc char(7) not null,
	calendar_quarter_id bigint not null,
	fiscal_quarter_desc char(7) not null,
	fiscal_quarter_id bigint not null,
	days_in_cal_quarter bigint not null,
	days_in_fis_quarter bigint not null,
	end_of_cal_quarter timestamp not null,
	end_of_fis_quarter timestamp not null,
	calendar_quarter_number smallint not null,
	fiscal_quarter_number smallint not null,
	calendar_year smallint not null,
	calendar_year_id bigint not null,
	fiscal_year smallint not null,
	fiscal_year_id bigint not null,
	days_in_cal_year bigint not null,
	days_in_fis_year bigint not null,
	end_of_cal_year timestamp not null,
	end_of_fis_year timestamp not null
) ;
comment on table times is e'time dimension table to support multiple hierarchies and materialized views';
comment on column times.calendar_month_name is e'january to december, repeating';
comment on column times.fiscal_month_name is e'january to december, repeating';
comment on column times.day_number_in_month is e'1 to 31, repeating';
comment on column times.calendar_quarter_number is e'1 to 4, repeating';
comment on column times.fiscal_quarter_desc is e'e.g. 1999-q3, correct order';
comment on column times.fiscal_week_number is e'1 to 53, repeating';
comment on column times.calendar_quarter_desc is e'e.g. 1998-q1, correct order';
comment on column times.days_in_cal_quarter is e'e.g. 88,90, repeating';
comment on column times.end_of_cal_month is e'last day of calendar month';
comment on column times.calendar_year is e'e.g. 1999, correct order';
comment on column times.time_id is e'primary key; day date, finest granularity, correct order';
comment on column times.calendar_week_number is e'1 to 53, repeating';
comment on column times.fiscal_year is e'e.g. 1999, correct order';
comment on column times.fiscal_month_number is e'1 to 12, repeating';
comment on column times.days_in_fis_month is e'e.g. 25,32, repeating';
comment on column times.end_of_cal_year is e'last day of cal year';
comment on column times.calendar_month_desc is e'e.g. 1998-01, correct order';
comment on column times.days_in_cal_year is e'365,366 repeating';
comment on column times.fiscal_month_desc is e'e.g. 1998-01, correct order';
comment on column times.end_of_cal_quarter is e'last day of calendar quarter';
comment on column times.end_of_fis_year is e'last day of fiscal year';
comment on column times.days_in_fis_year is e'e.g. 355,364, repeating';
comment on column times.calendar_month_number is e'1 to 12, repeating';
comment on column times.week_ending_day is e'date of last day in week, correct order';
comment on column times.days_in_cal_month is e'e.g. 28,31, repeating';
comment on column times.end_of_fis_quarter is e'last day of fiscal quarter';
comment on column times.day_name is e'monday to sunday, repeating';
comment on column times.day_number_in_week is e'1 to 7, repeating';
comment on column times.days_in_fis_quarter is e'e.g. 88,90, repeating';
comment on column times.fiscal_quarter_number is e'1 to 4, repeating';
comment on column times.end_of_fis_month is e'last day of fiscal month';
alter table times add primary key (time_id);
