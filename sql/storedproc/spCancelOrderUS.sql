create function spCancelOrderUS(p_oid int) returns void as $$
begin 
	/* 
        set both the status to cancelled (CA) and set the shipdate to NULL
        Wont be shipping the order anymore.
    */
         update torder ord
         set orderstatusval = 'CA',
         shipdate = NULL,
         canceldate = now()
         where ord.oid = p_oid;
	
    return;               
end;
$$ LANGUAGE plpgsql;

--drop function spCancelOrderUS