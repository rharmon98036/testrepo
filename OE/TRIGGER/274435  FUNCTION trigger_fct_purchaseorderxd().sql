set search_path = oe;
create or replace function "trigger_fct_purchaseorder$xd"() returns trigger as $body$
begin  if (tg_op = 'delete') then xdb.xdb_pitrig_pkg.pitrig_del('oe','purchaseorder', old.sys_nc_oid$, 'd30dda47778542af97ba6967825af507' ); end if;   if (tg_op = 'update') then xdb.xdb_pitrig_pkg.pitrig_upd('oe','purchaseorder', old.sys_nc_oid$, 'd30dda47778542af97ba6967825af507', user ); end if; if tg_op = 'delete' then
	return old;
else
	return new;
end if;

end
$body$
 language 'plpgsql';

