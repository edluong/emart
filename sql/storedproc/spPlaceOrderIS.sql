create function spPlaceOrderIS(p_cid int,
                               p_prodid int,
                               p_qty int,
                               p_discount int default 0)
returns void as $$
declare n_oid torder.oid%TYPE; -- this uses the same type as the oid in torder table
begin
	/*
    	creates a new order 
        shipping is assumed to be done the day after
    */
	insert into torder(cid,shipdate,orderstatusval)
    values(p_cid,current_date + 1,'OR')
    returning oid into n_oid;
    
    /*
    	populates torderdetail
    */
    insert into torderdetail(oid,prodid,cid,quantity,discount)
    values(n_oid,p_prodid,p_cid,p_qty,p_discount);
    
end;
$$ language plpgsql;

        
        
                               