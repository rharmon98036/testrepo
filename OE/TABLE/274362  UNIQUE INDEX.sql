set search_path = oe;
create unique index purchaseorder_xmldata.actions.action on purchaseorder ("xmldata"."actions"."action");
