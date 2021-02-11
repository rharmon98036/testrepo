set search_path = sh;
create index supplementary_demographics_comments on supplementary_demographics using gin(to_tsvector('english', comments));


